library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

ENTITY Display7Segmentos is
    Port (   
        -- Entradas desde el módulo DosServos
        led_piso1     : in  STD_LOGIC;
        led_piso2     : in  STD_LOGIC;
        led_piso3     : in  STD_LOGIC;
        led_piso4     : in  STD_LOGIC;
        led_piso5     : in  STD_LOGIC;
        
        -- Salidas al display de 7 segmentos
        -- Segmentos: a, b, c, d, e, f, g (de MSB a LSB)
        display_7seg  : out STD_LOGIC_VECTOR(6 downto 0)
    );
end Display7Segmentos;

ARCHITECTURE Arch_D7S of Display7Segmentos is
    
    -- Señal interna para determinar el piso actual
    signal piso_actual : STD_LOGIC_VECTOR(2 downto 0);
    
    -- Patrones para display de 7 segmentos (cátodo común)
    -- Formato: gfedcba
    -- '0' = segmento encendido, '1' = segmento apagado
    constant DIGIT_0 : STD_LOGIC_VECTOR(6 downto 0) := "0000001"; -- 0
    constant DIGIT_1 : STD_LOGIC_VECTOR(6 downto 0) := "1001111"; -- 1
    constant DIGIT_2 : STD_LOGIC_VECTOR(6 downto 0) := "0010010"; -- 2
    constant DIGIT_3 : STD_LOGIC_VECTOR(6 downto 0) := "0000110"; -- 3
    constant DIGIT_4 : STD_LOGIC_VECTOR(6 downto 0) := "1001100"; -- 4
    constant DIGIT_5 : STD_LOGIC_VECTOR(6 downto 0) := "0100100"; -- 5
    constant ERROR   : STD_LOGIC_VECTOR(6 downto 0) := "1111111"; -- E (error)

begin

    -- Proceso para determinar el piso actual basado en los LEDs
    piso_decoder: process(led_piso1, led_piso2, led_piso3, led_piso4, led_piso5)
    begin
        -- Codificar el piso actual en binario
        if led_piso1 = '1' then
            piso_actual <= "001"; -- Piso 1
        elsif led_piso2 = '1' then
            piso_actual <= "010"; -- Piso 2
        elsif led_piso3 = '1' then
            piso_actual <= "011"; -- Piso 3
        elsif led_piso4 = '1' then
            piso_actual <= "100"; -- Piso 4
        elsif led_piso5 = '1' then
            piso_actual <= "101"; -- Piso 5
        else
            piso_actual <= "000"; -- Estado de error o indefinido
        end if;
    end process;

    -- Decodificador de 7 segmentos usando with select
    with piso_actual select
        display_7seg <= DIGIT_1 when "001",  -- Mostrar "1" para piso 1
                       DIGIT_2 when "010",  -- Mostrar "2" para piso 2
                       DIGIT_3 when "011",  -- Mostrar "3" para piso 3
                       DIGIT_4 when "100",  -- Mostrar "4" para piso 4
                       DIGIT_5 when "101",  -- Mostrar "5" para piso 5
                       ERROR   when others; -- Mostrar "E" para estados no válidos
end Arch_D7S;