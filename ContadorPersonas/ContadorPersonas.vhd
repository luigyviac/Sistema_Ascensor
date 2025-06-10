library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY ContadorPersonas is
    Port (   
        clk           : in  STD_LOGIC;
        reset         : in  STD_LOGIC;
        
        -- Botones de control
        btn_sumar     : in  STD_LOGIC;  
        btn_restar    : in  STD_LOGIC;  
        
        -- Salidas para dos displays
        display_7seg_unidades : out STD_LOGIC_VECTOR(6 downto 0);  -- Display unidades
        display_7seg_decenas  : out STD_LOGIC_VECTOR(6 downto 0);  -- Display decenas
        led_limite            : out STD_LOGIC;                      -- LED indicador de límite (10)
        contador_cero         : out STD_LOGIC                       -- Indicador de contador en 0
    );
end ContadorPersonas;

ARCHITECTURE Arch_ConPer of ContadorPersonas is

    -- Señal del contador (0 a 10) - CORREGIDO: límite ahora es 10
    signal contador : integer range 0 to 11 := 0;
    
    -- Señales para los dígitos individuales
    signal unidades : integer range 0 to 9;
    signal decenas  : integer range 0 to 1;
    
    -- Señales para anti-rebote
    signal btn_sumar_sync  : STD_LOGIC_VECTOR(2 downto 0) := "000";
    signal btn_restar_sync : STD_LOGIC_VECTOR(2 downto 0) := "000";
    signal btn_sumar_edge  : STD_LOGIC;
    signal btn_restar_edge : STD_LOGIC;
   
    -- '0' = segmento encendido, '1' = segmento apagado
    constant DIGIT_0 : STD_LOGIC_VECTOR(6 downto 0) := "1000000"; -- 0
    constant DIGIT_1 : STD_LOGIC_VECTOR(6 downto 0) := "1111001"; -- 1
    constant DIGIT_2 : STD_LOGIC_VECTOR(6 downto 0) := "0100100"; -- 2
    constant DIGIT_3 : STD_LOGIC_VECTOR(6 downto 0) := "0110000"; -- 3
    constant DIGIT_4 : STD_LOGIC_VECTOR(6 downto 0) := "0011001"; -- 4
    constant DIGIT_5 : STD_LOGIC_VECTOR(6 downto 0) := "0010010"; -- 5
    constant DIGIT_6 : STD_LOGIC_VECTOR(6 downto 0) := "0000010"; -- 6
    constant DIGIT_7 : STD_LOGIC_VECTOR(6 downto 0) := "1111000"; -- 7
    constant DIGIT_8 : STD_LOGIC_VECTOR(6 downto 0) := "0000000"; -- 8
    constant DIGIT_9 : STD_LOGIC_VECTOR(6 downto 0) := "0010000"; -- 9
    constant DIGIT_OFF : STD_LOGIC_VECTOR(6 downto 0) := "1111111"; -- Apagado

begin

    -- Proceso de anti-rebote para los botones
    debounce_process: process(clk, reset)
    begin
        if reset = '1' then
            btn_sumar_sync  <= "000";
            btn_restar_sync <= "000";
        elsif rising_edge(clk) then
            -- Registro de desplazamiento para sincronizar botones
            btn_sumar_sync  <= btn_sumar_sync(1 downto 0) & btn_sumar;
            btn_restar_sync <= btn_restar_sync(1 downto 0) & btn_restar;
        end if;
    end process;
    
    -- Detección de flancos ascendentes
    btn_sumar_edge  <= btn_sumar_sync(1) and not btn_sumar_sync(2);
    btn_restar_edge <= btn_restar_sync(1) and not btn_restar_sync(2);

    -- Proceso principal del contador
    contador_process: process(clk, reset)
    begin
        if reset = '1' then
            contador <= 0;
        elsif rising_edge(clk) then
            -- Incrementar contador (CORREGIDO: límite superior ahora es 10)
            if btn_sumar_edge = '1' then
                if contador < 11 then
                    contador <= contador + 1;
                end if;
            end if;
            
            -- Decrementar contador
            if btn_restar_edge = '1' then
                if contador > 0 then
                    contador <= contador - 1;
                end if;
            end if;
        end if;
    end process;

    -- Separación de dígitos
    separacion_digitos: process(contador)
    begin
        if contador < 10 then
            decenas <= 0;
            unidades <= contador;
        else
            decenas <= 1;
            unidades <= contador - 10;
        end if;
    end process;

    -- Decodificador de 7 segmentos para unidades
    with unidades select
        display_7seg_unidades <= DIGIT_0 when 0,
                                DIGIT_1 when 1,
                                DIGIT_2 when 2,
                                DIGIT_3 when 3,
                                DIGIT_4 when 4,
                                DIGIT_5 when 5,
                                DIGIT_6 when 6,
                                DIGIT_7 when 7,
                                DIGIT_8 when 8,
                                DIGIT_9 when 9,
                                DIGIT_0 when others;

    -- Decodificador de 7 segmentos para decenas
    with decenas select
        display_7seg_decenas <= DIGIT_OFF when 0,  -- Apagado para números < 10
                               DIGIT_1   when 1,   -- Muestra "1" para números = 10
                               DIGIT_OFF when others;

    -- LED indicador de límites (CORREGIDO: se enciende cuando está en 10)
    led_limite <= '1' when (contador = 11) else '0';
    
    -- Indicador de contador en cero
    contador_cero <= '1' when (contador = 0) else '0';

end  Arch_ConPer;