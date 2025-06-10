library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity BotonesInternos is
    Port (
        clk         : in  STD_LOGIC;                    -- Señal de reloj
        reset       : in  STD_LOGIC;                    -- Reset del sistema
        buttons     : in  STD_LOGIC_VECTOR(4 downto 0); -- 5 botones (4=piso5, 0=piso1)
        open_door   : in  STD_LOGIC;                    -- Botón abrir puerta
        close_door  : in  STD_LOGIC;                    -- Botón cerrar puerta
        emergency   : in  STD_LOGIC;                    -- Botón de emergencia
        leds        : out STD_LOGIC_VECTOR(4 downto 0); -- 5 LEDs (4=piso5, 0=piso1)
        door_open   : out STD_LOGIC;                    -- LED indicador puerta abierta
        emergency_led : out STD_LOGIC                   -- LED indicador emergencia activa
    );
end BotonesInternos;

architecture Arch_BI of BotonesInternos is
    -- Señales para detectar flancos de subida en los botones
    signal buttons_reg      : STD_LOGIC_VECTOR(4 downto 0) := (others => '0');
    signal buttons_edge     : STD_LOGIC_VECTOR(4 downto 0);
    
    -- Señales para detectar flancos de los botones de puerta
    signal open_door_reg    : STD_LOGIC := '0';
    signal close_door_reg   : STD_LOGIC := '0';
    signal emergency_reg    : STD_LOGIC := '0';
    signal open_door_edge   : STD_LOGIC;
    signal close_door_edge  : STD_LOGIC;
    signal emergency_edge   : STD_LOGIC;
    
    -- Registro para mantener el estado de los LEDs
    signal led_state        : STD_LOGIC_VECTOR(4 downto 0) := (others => '0');
    signal door_state       : STD_LOGIC := '0';  -- 0=cerrada, 1=abierta
    signal emergency_state  : STD_LOGIC := '0';  -- 0=normal, 1=emergencia
    
begin
    -- Proceso para detectar flancos de subida en los botones
    process(clk, reset)
    begin
        if reset = '1' then
            buttons_reg <= (others => '0');
            open_door_reg <= '0';
            close_door_reg <= '0';
            emergency_reg <= '0';
        elsif rising_edge(clk) then
            buttons_reg <= buttons;
            open_door_reg <= open_door;
            close_door_reg <= close_door;
            emergency_reg <= emergency;
        end if;
    end process;
    
    -- Detección de flancos de subida (botón presionado)
    buttons_edge <= buttons and not buttons_reg;
    open_door_edge <= open_door and not open_door_reg;
    close_door_edge <= close_door and not close_door_reg;
    emergency_edge <= emergency and not emergency_reg;
    
    -- Proceso principal para controlar los LEDs, puerta y emergencia
    process(clk, reset)
    begin
        if reset = '1' then
            led_state <= (others => '0');
            door_state <= '0';      -- Puerta cerrada por defecto
            emergency_state <= '0'; -- Estado normal por defecto
        elsif rising_edge(clk) then
            -- Control de emergencia (tiene prioridad máxima)
            if emergency_edge = '1' then
                emergency_state <= not emergency_state; -- Toggle emergencia
                if emergency_state = '0' then
                    -- Activar emergencia: apagar todos los LEDs de piso y abrir puerta
                    led_state <= (others => '0');
                    door_state <= '1';
                end if;
            end if;
            
            -- Si NO está en emergencia, funcionamiento normal
            if emergency_state = '0' then
                -- Control de botones de piso
                for i in 0 to 4 loop
                    if buttons_edge(i) = '1' then
                        led_state(i) <= not led_state(i);
                    end if;
                end loop;
                
                -- Control de la puerta
                if open_door_edge = '1' then
                    door_state <= '1';  -- Abrir puerta
                elsif close_door_edge = '1' then
                    door_state <= '0';  -- Cerrar puerta
                end if;
            end if;
        end if;
    end process;
    
    -- Asignar el estado de los LEDs, puerta y emergencia a las salidas
    leds <= led_state;
    door_open <= door_state;
    emergency_led <= emergency_state;
    
end Arch_BI;
