set(COMPONENT_SRCS "main.cpp" "devices.cpp")
set(COMPONENT_ADD_INCLUDEDIRS "../components/esp32-owb/include" "../components/esp32-ds18b20/include")

set(COMPONENT_REQUIRES
        "esp32-ds18b20"
        "esp32-owb"
        )

register_component()