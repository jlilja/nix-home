{ config, pkgs, ... }:

{
  programs.mangohud = {
    enable = true;
  };

  home.file.".config/MangoHud/MangoHud.conf".text = ''
    ### Display the current GPU information
    ## Note: gpu_mem_clock also needs `vram` to be enabled
    gpu_stats
    gpu_temp
    # gpu_core_clock
    # gpu_mem_clock
    gpu_power
    # gpu_text=GPU
    # gpu_load_change
    # gpu_load_value=60,90
    # gpu_load_color=39F900,FDFD09,B22222

    ### Display the current CPU information
    cpu_stats
    cpu_temp
    # cpu_power
    # cpu_text=CPU
    # cpu_mhz
    # cpu_load_change
    # cpu_load_value=60,90
    # cpu_load_color=39F900,FDFD09,B22222

    ### Display the current CPU load & frequency for each core
    # core_load
    # core_load_change

    ### Display IO read and write for the app (not system)
    # io_stats
    # io_read
    # io_write

    ### Display system vram / ram / swap space usage
    # vramsudo dnf install corectrl
    # ram
    # swap

    ### Display per process memory usage
    ## Show resident memory and other types, if enabled
    # procmem
    # procmem_shared
    # procmem_virt

    ### Display battery information
    # battery
    # battery_icon
    # gamepad_battery
    # gamepad_battery_icon

    ### Display FPS and frametime
    # fps
    # fps_sampling_period=500
    # fps_color_change
    # fps_value=30,60
    # fps_color=B22222,FDFD09,39F900
    # frametime
    # frame_count

    ### Display miscellaneous information
    # engine_version
    # gpu_name
    # vulkan_driver
    # wine

    ### Display loaded MangoHud architecture
    # arch

    ### Display the frametime line graph
        frame_timing
    # histogram

    ### Display GameMode / vkBasalt running status
    # gamemode
    # vkbasalt

    ### Display current FPS limit
    # show_fps_limit

    ### Display the current resolution
    # resolution

    ### Display custom text
    # custom_text=
    ### Display output of Bash command in next column
    # exec=

    ### Display media player metadata
    # media_player
    # media_player_name=spotify
    ## Format metadata, lines are delimited by ; (wip)
    # media_player_format={title};{artist};{album}
    # media_player_format=Track:;{title};By:;{artist};From:;{album}

    ### Change the hud font size
    # font_size=24
    # font_scale=1.0
    # font_size_text=24
    # font_scale_media_player=0.55
    # no_small_font

    ### Change default font (set location to TTF/OTF file)
    ## Set font for the whole hud
    # font_file=

    ## Set font only for text like media player metadata
    # font_file_text=

    ## Set font glyph ranges. Defaults to Latin-only. Don't forget to set font_file/font_file_text to font that supports these
    ## Probably don't enable all at once because of memory usage and hardware limits concerns
    ## If you experience crashes or text is just squares, reduce glyph range or reduce font size
    # font_glyph_ranges=korean,chinese,chinese_simplified,japanese,cyrillic,thai,vietnamese,latin_ext_a,latin_ext_b

    ### Change the hud position
    position=top-right

    ### Change the corner roundness
    # round_corners=

    ### Disable / hide the hud by default
    # no_display

    ### Hud position offset
    # offset_x=
    # offset_y=

    ### Hud dimensions
    # width=
    # height=
    # table_columns=
    # cellpadding_y=

    ### Hud transparency / alpha
    # background_alpha=0.5
    # alpha=

    ### FCAT overlay
    ### This enables an FCAT overlay to perform frametime analysis on the final image stream.
    ### Enable the overlay
    # fcat
    ### Set the width of the FCAT overlay.
    ### 24 is a performance optimization on AMD GPUs that should not have adverse effects on nVidia GPUs.
    ### A minimum of 20 pixels is recommended by nVidia.
    # fcat_overlay_width=24
    ### Set the screen edge, this can be useful for special displays that don't update from top edge to bottom. This goes from 0 (left side) to 3 (top edge), counter-clockwise.
    # fcat_screen_edge=0

    ### Color customization
    # text_color=FFFFFF
    # gpu_color=2E9762
    # cpu_color=2E97CB
    # vram_color=AD64C1
    # ram_color=C26693
    # engine_color=EB5B5B
    # io_color=A491D3
    # frametime_color=00FF00
    # background_color=020202
    # media_player_color=FFFFFF
    # wine_color=EB5B5B
    # battery_color=FF9078

    ### Specify GPU with PCI bus ID for AMDGPU and NVML stats
    ### Set to 'domain:bus:slot.function'
    # pci_dev=0:0a:0.0

    ### Blacklist
    # blacklist=

    ### Control over socket
    ### Enable and set socket name, '%p' is replaced with process id
    # control = mangohud
    # control = mangohud-%p

    ################ WORKAROUNDS #################
    ### Options starting with `gl_*` are for OpenGL
    ### Specify what to use for getting display size. Options are `viewport`, `scissorbox` or disabled. Defaults to using glXQueryDrawable
    # gl_size_query=viewport

    ### (Re)bind given framebuffer before MangoHud gets drawn. Helps with Crusader Kings III
    # gl_bind_framebuffer=0

    ### Don't swap origin if using GL_UPPER_LEFT. Helps with Ryujinx
    # gl_dont_flip=1

    ################ INTERACTION #################

    ### Change toggle keybinds for the hud & logging
    # toggle_hud=Shift_R+F12
    # toggle_fps_limit=Shift_L+F1
    # toggle_logging=Shift_L+F2
    # reload_cfg=Shift_L+F4
    # upload_log=Shift_L+F3

    #################### LOG #####################
    ### Automatically start the log after X seconds
    # autostart_log=1
    ### Set amount of time in seconds that the logging will run for
    # log_duration=
    ### Change the default log interval, 100 is default
    # log_interval=100
    ### Set location of the output files (required for logging)
    # output_folder=/home/<USERNAME>/mangologs
    ### Permit uploading logs directly to FlightlessMango.com
    # permit_upload=1
    ### Define a '+'-separated list of percentiles shown in the benchmark results
    ### Use `AVG` to get a mean average. Default percentiles are 97+AVG+1+0.1
    # benchmark_percentiles=97,AVG,1,0.1
  '';
}
