library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

ENTITY Sistema_Ascensor_Top is  -- Nombre cambiado
    Port (   
        -- Señales del sistema
        clk           : in  STD_LOGIC;
        reset         : in  STD_LOGIC;
        
        -- Botones de llamada del ascensor
        btn_piso1     : in  STD_LOGIC;
        btn_piso2_up  : in  STD_LOGIC;
        btn_piso2_dn  : in  STD_LOGIC;
        btn_piso3_up  : in  STD_LOGIC;
        btn_piso3_dn  : in  STD_LOGIC;
        btn_piso4_up  : in  STD_LOGIC;
        btn_piso4_dn  : in  STD_LOGIC;
        btn_piso5     : in  STD_LOGIC;
        
        -- Botones del contador de personas
        btn_sumar     : in  STD_LOGIC;
        btn_restar    : in  STD_LOGIC;
        
        -- Control del motor y servos
        motor_in1     : out STD_LOGIC;
        motor_in2     : out STD_LOGIC;
        motor_ena     : out STD_LOGIC;
        servo1_pwm    : out STD_LOGIC;
        servo2_pwm    : out STD_LOGIC;
        
        -- LEDs indicadores de piso
        led_piso1     : out STD_LOGIC;
        led_piso2     : out STD_LOGIC;
        led_piso3     : out STD_LOGIC;
        led_piso4     : out STD_LOGIC;
        led_piso5     : out STD_LOGIC;
        
        -- Estados del sistema
        door_open     : out STD_LOGIC;
        moving        : out STD_LOGIC;
        
         
        -- Display de 7 segmentos para mostrar piso actual
        display_7seg  : out STD_LOGIC_VECTOR(6 downto 0);
        
        -- Salidas del contador de personas
        display_7seg_unidades : out STD_LOGIC_VECTOR(6 downto 0);
        display_7seg_decenas  : out STD_LOGIC_VECTOR(6 downto 0);
        led_limite            : out STD_LOGIC
    );
end Sistema_Ascensor_Top;

ARCHITECTURE Arch_SA of Sistema_Ascensor_Top is

    -- Declaración del componente Ascensor_Top
    component Ascensor_Top
        Port (   
            clk           : in  STD_LOGIC;
            reset         : in  STD_LOGIC;
            btn_piso1     : in  STD_LOGIC;
            btn_piso2_up  : in  STD_LOGIC;
            btn_piso2_dn  : in  STD_LOGIC;
            btn_piso3_up  : in  STD_LOGIC;
            btn_piso3_dn  : in  STD_LOGIC;
            btn_piso4_up  : in  STD_LOGIC;
            btn_piso4_dn  : in  STD_LOGIC;
            btn_piso5     : in  STD_LOGIC;
            motor_in1     : out STD_LOGIC;
            motor_in2     : out STD_LOGIC;
            motor_ena     : out STD_LOGIC;
            servo1_pwm    : out STD_LOGIC;
            servo2_pwm    : out STD_LOGIC;
            led_piso1     : out STD_LOGIC;
            led_piso2     : out STD_LOGIC;
            led_piso3     : out STD_LOGIC;
            led_piso4     : out STD_LOGIC;
            led_piso5     : out STD_LOGIC;
            door_open     : out STD_LOGIC;
            moving        : out STD_LOGIC
            --total_trips   : out STD_LOGIC_VECTOR(7 downto 0);
            --most_used_floor : out STD_LOGIC_VECTOR(2 downto 0)
        );
    end component;

    -- Declaración del componente Display7Segmentos
    component Display7Segmentos
        Port (   
            led_piso1     : in  STD_LOGIC;
            led_piso2     : in  STD_LOGIC;
            led_piso3     : in  STD_LOGIC;
            led_piso4     : in  STD_LOGIC;
            led_piso5     : in  STD_LOGIC;
            display_7seg  : out STD_LOGIC_VECTOR(6 downto 0)
        );
    end component;

    -- Declaración del componente ContadorPersonas
    component ContadorPersonas
        Port (   
            clk           : in  STD_LOGIC;
            reset         : in  STD_LOGIC;
            btn_sumar     : in  STD_LOGIC;
            btn_restar    : in  STD_LOGIC;
            display_7seg_unidades : out STD_LOGIC_VECTOR(6 downto 0);
            display_7seg_decenas  : out STD_LOGIC_VECTOR(6 downto 0);
            led_limite            : out STD_LOGIC;
            contador_cero         : out STD_LOGIC
        );
    end component;

    -- Señales internas para conectar los módulos
    signal internal_led_piso1 : STD_LOGIC;
    signal internal_led_piso2 : STD_LOGIC;
    signal internal_led_piso3 : STD_LOGIC;
    signal internal_led_piso4 : STD_LOGIC;
    signal internal_led_piso5 : STD_LOGIC;
    
    -- Señales internas del motor del ascensor
    signal internal_motor_in1 : STD_LOGIC;
    signal internal_motor_in2 : STD_LOGIC;
    signal internal_motor_ena : STD_LOGIC;
    
    -- Señales internas del contador de personas
    signal internal_led_limite : STD_LOGIC;
    signal contador_cero : STD_LOGIC;
    signal botones_habilitados : STD_LOGIC;
    signal motor_habilitado : STD_LOGIC;

begin

    -- Instanciación del módulo del ascensor
    Ascensor_inst: Ascensor_Top
        port map (
            clk         => clk,
            reset       => reset,
            btn_piso1   => btn_piso1 and botones_habilitados,
            btn_piso2_up => btn_piso2_up and botones_habilitados,
            btn_piso2_dn => btn_piso2_dn and botones_habilitados,
            btn_piso3_up => btn_piso3_up and botones_habilitados,
            btn_piso3_dn => btn_piso3_dn and botones_habilitados,
            btn_piso4_up => btn_piso4_up and botones_habilitados,
            btn_piso4_dn => btn_piso4_dn and botones_habilitados,
            btn_piso5   => btn_piso5 and botones_habilitados,
            motor_in1   => internal_motor_in1,
            motor_in2   => internal_motor_in2,
            motor_ena   => internal_motor_ena,
            servo1_pwm  => servo1_pwm,
            servo2_pwm  => servo2_pwm,
            led_piso1   => internal_led_piso1,
            led_piso2   => internal_led_piso2,
            led_piso3   => internal_led_piso3,
            led_piso4   => internal_led_piso4,
            led_piso5   => internal_led_piso5,
            door_open   => door_open,
            moving      => moving
 
        );

    -- Instanciación del módulo del display
    Display_inst: Display7Segmentos
        port map (
            led_piso1   => internal_led_piso1,
            led_piso2   => internal_led_piso2,
            led_piso3   => internal_led_piso3,
            led_piso4   => internal_led_piso4,
            led_piso5   => internal_led_piso5,
            display_7seg => display_7seg
        );

    -- Instanciación del módulo contador de personas
    Contador_inst: ContadorPersonas
        port map (
            clk         => clk,
            reset       => reset,
            btn_sumar   => btn_sumar,
            btn_restar  => btn_restar,
            display_7seg_unidades => display_7seg_unidades,
            display_7seg_decenas  => display_7seg_decenas,
            led_limite  => internal_led_limite,
            contador_cero => contador_cero
        );

    -- Lógica de habilitación del ascensor
    botones_habilitados <= not (contador_cero or internal_led_limite);  -- Botones deshabilitados cuando contador = 0 o 10
    motor_habilitado <= not internal_led_limite;                        -- Motor deshabilitado solo cuando contador = 10

    -- Conexiones directas hacia las salidas externas
    led_piso1 <= internal_led_piso1;
    led_piso2 <= internal_led_piso2;
    led_piso3 <= internal_led_piso3;
    led_piso4 <= internal_led_piso4;
    led_piso5 <= internal_led_piso5;
    led_limite <= internal_led_limite;

    -- Control del motor: deshabilitado solo cuando contador = 10
    motor_in1 <= internal_motor_in1 when motor_habilitado = '1' else '0';
    motor_in2 <= internal_motor_in2 when motor_habilitado = '1' else '0';
    motor_ena <= internal_motor_ena when motor_habilitado = '1' else '0';

    -- Los servos (puertas) siempre funcionan normalmente - no se modifican

end Arch_SA;