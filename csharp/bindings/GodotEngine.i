/* GodotEngine.i */
%module GodotEngine
%{
#include "core/variant.h"

// Built-in Types
#include "core/math/math_2d.h"
#include "core/ustring.h"

// Object Types
#include "core/object.h"
#include "core/path_remap.h"
#include "main/performance.h"
#include "servers/physics_2d_server.h"
#include "servers/physics_2d/body_2d_sw.h"
#include "servers/physics_2d/physics_2d_server_sw.h"
#include "servers/physics_server.h"
#include "servers/physics/body_sw.h"
#include "servers/physics/physics_server_sw.h"
#include "core/reference.h"
#include "drivers/nrex/regex.h"
#include "core/resource.h"
#include "core/io/resource_loader.h"
#include "scene/resources/room.h"
#include "scene/resources/sample.h"
#include "scene/resources/sample_library.h"
#include "scene/resources/packed_scene.h"
#include "core/script_language.h"
#include "scene/resources/shader.h"
#include "scene/resources/shader_graph.h"
#include "scene/resources/shape.h"
#include "scene/resources/shape_2d.h"
#include "scene/3d/spatial.h"
#include "servers/spatial_sound_2d_server.h"
#include "servers/spatial_sound_2d/spatial_sound_2d_server_sw.h"
#include "servers/spatial_sound_server.h"
#include "servers/spatial_sound/spatial_sound_server_sw.h"
#include "scene/resources/sphere_shape.h"
#include "scene/2d/animated_sprite.h"
#include "core/io/stream_peer.h"
#include "core/io/stream_peer_ssl.h"
#include "core/io/stream_peer_tcp.h"
#include "scene/resources/style_box.h"
#include "scene/resources/surface_tool.h"
#include "core/io/tcp_server.h"
#include "scene/resources/texture.h"
#include "scene/resources/theme.h"
#include "scene/resources/tile_set.h"
#include "core/translation.h"
#include "scene/gui/tree.h"
#include "core/undo_redo.h"
#include "scene/resources/video_stream.h"
#include "drivers/theora/video_stream_theora.h"
#include "servers/visual_server.h"
#include "scene/resources/world.h"
#include "scene/resources/world_2d.h"
#include "core/io/xml_parser.h"
#include "core/bind/core_bind.h"
#include "scene/resources/animation.h"
#include "servers/audio_server.h"
#include "servers/audio/audio_server_sw.h"
#include "scene/resources/audio_stream.h"
#include "drivers/mpc/audio_stream_mpc.h"
#include "drivers/vorbis/audio_stream_ogg_vorbis.h"
#include "drivers/opus/audio_stream_opus.h"
#include "drivers/speex/audio_stream_speex.h"
#include "scene/resources/baked_light.h"
#include "scene/resources/bit_mask.h"
#include "scene/resources/box_shape.h"
#include "modules/csharp/csharp_script.h"
#include "scene/2d/canvas_item.h"
#include "scene/resources/capsule_shape.h"
#include "scene/resources/capsule_shape_2d.h"
#include "scene/resources/circle_shape_2d.h"
#include "scene/resources/color_ramp.h"
#include "scene/resources/concave_polygon_shape.h"
#include "scene/resources/concave_polygon_shape_2d.h"
#include "core/io/config_file.h"
#include "scene/resources/convex_polygon_shape.h"
#include "scene/resources/convex_polygon_shape_2d.h"
#include "scene/resources/curve.h"
#include "scene/resources/dynamic_font.h"
#include "tools/editor/editor_import_export.h"
#include "tools/editor/io_plugins/editor_scene_import_plugin.h"
#include "tools/editor/editor_run_script.h"
#include "tools/editor/editor_data.h"
#include "tools/editor/editor_settings.h"
#include "tools/editor/spatial_editor_gizmos.h"
#include "scene/resources/environment.h"
#include "scene/resources/event_stream.h"
#include "drivers/chibi/event_stream_chibi.h"
#include "scene/resources/font.h"
#include "core/func_ref.h"
#include "modules/gdscript/gd_script.h"
#include "core/globals.h"
#include "core/io/http_client.h"
#include "core/io/ip.h"
#include "drivers/unix/ip_unix.h"
#include "core/os/input.h"
#include "main/input_default.h"
#include "core/input_map.h"
#include "scene/resources/shape_line_2d.h"
#include "core/os/main_loop.h"
#include "scene/resources/material.h"
#include "scene/resources/mesh.h"
#include "scene/resources/mesh_data_tool.h"
#include "scene/resources/mesh_library.h"
#include "scene/resources/multimesh.h"
#include "scene/3d/navigation_mesh.h"
#include "scene/2d/navigation_polygon.h"
#include "scene/main/node.h"
#include "scene/2d/light_occluder_2d.h"
#include "tools/pck/pck_packer.h"
#include "core/compressed_translation.h"
#include "core/packed_data_container.h"
#include "core/io/packet_peer.h"
#include "core/io/packet_peer_udp.h"
#include "scene/resources/plane_shape.h"
#include "scene/resources/polygon_path_finder.h"
#include "scene/resources/ray_shape.h"
#include "scene/resources/segment_shape_2d.h"
#include "scene/resources/rectangle_shape_2d.h"
#include "scene/main/viewport.h"
#include "scene/main/resource_preloader.h"
#include "scene/audio/sample_player.h"
#include "scene/main/scene_main_loop.h"
#include "scene/audio/sound_room_params.h"
#include "scene/3d/spatial_player.h"
#include "scene/3d/spatial_sample_player.h"
#include "scene/3d/spatial_stream_player.h"
#include "scene/audio/stream_player.h"
#include "scene/main/timer.h"
#include "scene/animation/tween.h"
#include "scene/3d/vehicle_body.h"
#include "scene/3d/visibility_notifier.h"
#include "scene/3d/visual_instance.h"
#include "scene/3d/scenario_fx.h"
#include "scene/animation/animation_player.h"
#include "scene/animation/animation_tree_player.h"
#include "scene/3d/baked_light_instance.h"
#include "scene/3d/bone_attachment.h"
#include "scene/3d/camera.h"
#include "scene/main/canvas_layer.h"
#include "scene/3d/collision_object.h"
#include "scene/3d/collision_polygon.h"
#include "scene/3d/body_shape.h"
#include "scene/gui/control.h"
#include "tools/editor/editor_plugin.h"
#include "scene/audio/event_player.h"
#include "scene/gui/graph_edit.h"
#include "modules/gridmap/grid_map.h"
#include "scene/main/http_request.h"
#include "scene/3d/immediate_geometry.h"
#include "scene/main/instance_placeholder.h"
#include "scene/3d/interpolated_camera.h"
#include "modules/ik/ik.h"
#include "scene/gui/item_list.h"
#include "scene/3d/physics_joint.h"
#include "scene/gui/label.h"
#include "scene/3d/light.h"
#include "scene/gui/line_edit.h"
#include "scene/3d/mesh_instance.h"
#include "scene/3d/multimesh_instance.h"
#include "scene/3d/navigation.h"
#include "scene/2d/node_2d.h"
#include "scene/gui/panel.h"
#include "scene/2d/parallax_background.h"
#include "scene/2d/parallax_layer.h"
#include "scene/2d/particles_2d.h"
#include "scene/3d/particles.h"
#include "scene/gui/patch_9_frame.h"
#include "scene/3d/path.h"
#include "scene/2d/path_2d.h"
#include "scene/3d/physics_body.h"
#include "scene/2d/polygon_2d.h"
#include "scene/gui/popup.h"
#include "scene/gui/dialogs.h"
#include "scene/gui/popup_menu.h"
#include "scene/3d/portal.h"
#include "scene/2d/position_2d.h"
#include "scene/3d/position_3d.h"
#include "scene/3d/proximity_group.h"
#include "scene/3d/quad.h"
#include "scene/gui/range.h"
#include "scene/3d/ray_cast.h"
#include "scene/2d/ray_cast_2d.h"
#include "scene/gui/reference_frame.h"
#include "scene/2d/remote_transform_2d.h"
#include "scene/gui/rich_text_label.h"
#include "scene/3d/room_instance.h"
#include "scene/gui/scroll_bar.h"
#include "scene/gui/separator.h"
#include "scene/3d/skeleton.h"
#include "scene/gui/slider.h"
#include "scene/2d/sound_player_2d.h"
#include "scene/gui/spin_box.h"
#include "scene/2d/sprite.h"
#include "scene/3d/sprite_3d.h"
#include "scene/gui/tab_container.h"
#include "scene/gui/tabs.h"
#include "scene/3d/test_cube.h"
#include "scene/gui/text_edit.h"
#include "scene/gui/texture_frame.h"
#include "scene/gui/texture_progress.h"
#include "scene/2d/tile_map.h"
#include "scene/2d/screen_button.h"
#include "scene/gui/video_player.h"
#include "scene/2d/visibility_notifier_2d.h"
#include "scene/2d/y_sort.h"
#include "scene/3d/area.h"
#include "scene/2d/back_buffer_copy.h"
#include "scene/gui/base_button.h"
#include "scene/gui/button.h"
#include "scene/gui/button_array.h"
#include "scene/2d/camera_2d.h"
#include "scene/2d/canvas_modulate.h"
#include "scene/gui/check_box.h"
#include "scene/gui/check_button.h"
#include "scene/2d/collision_object_2d.h"
#include "scene/2d/collision_polygon_2d.h"
#include "scene/2d/collision_shape_2d.h"
#include "scene/gui/color_picker.h"
#include "scene/gui/container.h"
#include "tools/editor/editor_file_dialog.h"
#include "scene/gui/file_dialog.h"
#include "scene/gui/graph_node.h"
#include "scene/gui/grid_container.h"
#include "scene/2d/joints_2d.h"
#include "scene/2d/light_2d.h"
#include "scene/gui/link_button.h"
#include "scene/gui/margin_container.h"
#include "scene/gui/menu_button.h"
#include "scene/2d/navigation2d.h"
#include "scene/gui/option_button.h"
#include "scene/gui/panel_container.h"
#include "scene/2d/physics_body_2d.h"
#include "scene/gui/progress_bar.h"
#include "scene/2d/sample_player_2d.h"
#include "scene/gui/scroll_container.h"
#include "scene/gui/split_container.h"
#include "scene/gui/texture_button.h"
#include "scene/gui/tool_button.h"
#include "scene/2d/area_2d.h"
#include "scene/gui/box_container.h"
#include "scene/gui/button_group.h"
#include "scene/gui/center_container.h"

typedef DVector<uint8_t> RawArray;
%}

%typemap(out) SWIGTYPE
%{ $result = memnew($1_ltype((const $1_ltype &)$1)); %}

%typemap(csout, excode=SWIGEXCODE) Object* {
    global::System.IntPtr cPtr = $imcall;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr);
    if (ret == null) {
      ret = new $csclassname(cPtr, false);
    }$excode
    return ret;
  }

%typemap(csout, excode=SWIGEXCODE) Node* {
    global::System.IntPtr cPtr = $imcall;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;
    if (ret == null) {
      ret = new $csclassname(cPtr, false);
    }$excode
    return ret;
  }

%typemap(csout, excode=SWIGEXCODE) Control* {
    global::System.IntPtr cPtr = $imcall;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;
    if (ret == null) {
      ret = new $csclassname(cPtr, false);
    }$excode
    return ret;
  }

%include mString.i
%include mNodePath.i
%include mVector2.i
%include mVariant.i

%include "object_type/Include.i"
