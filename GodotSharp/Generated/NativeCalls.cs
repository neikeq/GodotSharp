using System;
using System.Runtime.CompilerServices;
using System.Collections.Generic;

namespace GodotEngine
{
    internal static class NativeCalls
    {
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_TypeDB_get_method(string type, string method);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_Image_Ctor();
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_Image_Ctor_2(int width, int height, bool mipmaps, int format);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_Image_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_NodePath_Ctor(string path);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_NodePath_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static string godot_icall_NodePath_operator_String(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_RID_Ctor(IntPtr from);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_RID_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static byte[] godot_icall_String_md5_buffer(string str);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static string godot_icall_String_md5_text(string str);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static int godot_icall_String_rfind(string str, string what, int from);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static int godot_icall_String_rfindn(string str, string what, int from);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static byte[] godot_icall_String_sha256_buffer(string str);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static string godot_icall_String_sha256_text(string str);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static object godot_icall_Godot_bytes2var(byte[] bytes);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static object godot_icall_Godot_convert(object what, int type);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static int godot_icall_Godot_hash(object var);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static Object godot_icall_Godot_instance_from_id(int instance_id);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_Godot_print(object[] what);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_Godot_printerr(object[] what);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_Godot_printraw(object[] what);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_Godot_prints(object[] what);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_Godot_printt(object[] what);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_Godot_seed(int seed);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static string godot_icall_Godot_str(object[] what);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static object godot_icall_Godot_str2var(string str);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static bool godot_icall_Godot_type_exists(string type);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static byte[] godot_icall_Godot_var2bytes(object what);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static string godot_icall_Godot_var2str(object var);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static WeakRef godot_icall_Godot_weakref(IntPtr obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_AStar_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_AStar_Ctor(AStar obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_AcceptDialog_Ctor(AcceptDialog obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_AnimatedSprite_Ctor(AnimatedSprite obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_AnimatedSprite3D_Ctor(AnimatedSprite3D obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_Animation_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_Animation_Ctor(Animation obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_AnimationPlayer_Ctor(AnimationPlayer obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_AnimationTreePlayer_Ctor(AnimationTreePlayer obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_Area_Ctor(Area obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_Area2D_Ctor(Area2D obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_AtlasTexture_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_AtlasTexture_Ctor(AtlasTexture obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_AudioServer_get_singleton();
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_AudioStream_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_AudioStreamMPC_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_AudioStreamMPC_Ctor(AudioStreamMPC obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_AudioStreamOGGVorbis_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_AudioStreamOGGVorbis_Ctor(AudioStreamOGGVorbis obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_AudioStreamOpus_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_AudioStreamOpus_Ctor(AudioStreamOpus obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_AudioStreamPlayback_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_BackBufferCopy_Ctor(BackBufferCopy obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_BakedLight_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_BakedLight_Ctor(BakedLight obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_BakedLightInstance_Ctor(BakedLightInstance obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_BakedLightSampler_Ctor(BakedLightSampler obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_BitMap_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_BitMap_Ctor(BitMap obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_BitmapFont_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_BitmapFont_Ctor(BitmapFont obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_BoneAttachment_Ctor(BoneAttachment obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_BoxShape_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_BoxShape_Ctor(BoxShape obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_Button_Ctor(Button obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_ButtonGroup_Ctor(ButtonGroup obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_CSharpScript_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_CSharpScript_Ctor(CSharpScript obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_Camera_Ctor(Camera obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_Camera2D_Ctor(Camera2D obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_CanvasItemMaterial_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_CanvasItemMaterial_Ctor(CanvasItemMaterial obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_CanvasItemShader_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_CanvasItemShader_Ctor(CanvasItemShader obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_CanvasItemShaderGraph_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_CanvasItemShaderGraph_Ctor(CanvasItemShaderGraph obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_CanvasLayer_Ctor(CanvasLayer obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_CanvasModulate_Ctor(CanvasModulate obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_CapsuleShape_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_CapsuleShape_Ctor(CapsuleShape obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_CapsuleShape2D_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_CapsuleShape2D_Ctor(CapsuleShape2D obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_CenterContainer_Ctor(CenterContainer obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_CheckBox_Ctor(CheckBox obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_CheckButton_Ctor(CheckButton obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_CircleShape2D_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_CircleShape2D_Ctor(CircleShape2D obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_CollisionPolygon_Ctor(CollisionPolygon obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_CollisionPolygon2D_Ctor(CollisionPolygon2D obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_CollisionShape_Ctor(CollisionShape obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_CollisionShape2D_Ctor(CollisionShape2D obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_ColorFrame_Ctor(ColorFrame obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_ColorPicker_Ctor(ColorPicker obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_ColorPickerButton_Ctor(ColorPickerButton obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_ColorRamp_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_ColorRamp_Ctor(ColorRamp obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_ConcavePolygonShape_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_ConcavePolygonShape_Ctor(ConcavePolygonShape obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_ConcavePolygonShape2D_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_ConcavePolygonShape2D_Ctor(ConcavePolygonShape2D obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_ConeTwistJoint_Ctor(ConeTwistJoint obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_ConfigFile_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_ConfigFile_Ctor(ConfigFile obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_ConfirmationDialog_Ctor(ConfirmationDialog obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_Container_Ctor(Container obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_Control_Ctor(Control obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_ConvexPolygonShape_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_ConvexPolygonShape_Ctor(ConvexPolygonShape obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_ConvexPolygonShape2D_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_ConvexPolygonShape2D_Ctor(ConvexPolygonShape2D obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_CubeMap_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_CubeMap_Ctor(CubeMap obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_Curve2D_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_Curve2D_Ctor(Curve2D obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_Curve3D_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_Curve3D_Ctor(Curve3D obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_DampedSpringJoint2D_Ctor(DampedSpringJoint2D obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_DirectionalLight_Ctor(DirectionalLight obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_DynamicFont_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_DynamicFont_Ctor(DynamicFont obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_DynamicFontData_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_DynamicFontData_Ctor(DynamicFontData obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_EditorExportPlugin_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_EditorExportPlugin_Ctor(EditorExportPlugin obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_EditorFileDialog_Ctor(EditorFileDialog obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_EditorFileSystem_Ctor(EditorFileSystem obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_EditorFileSystemDirectory_Ctor(EditorFileSystemDirectory obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_EditorImportPlugin_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_EditorImportPlugin_Ctor(EditorImportPlugin obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_EditorPlugin_Ctor(EditorPlugin obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_EditorResourcePreview_Ctor(EditorResourcePreview obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_EditorResourcePreviewGenerator_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_EditorResourcePreviewGenerator_Ctor(EditorResourcePreviewGenerator obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_EditorScenePostImport_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_EditorScenePostImport_Ctor(EditorScenePostImport obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_EditorScript_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_EditorScript_Ctor(EditorScript obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_EditorSelection_Ctor(EditorSelection obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_EditorSettings_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_EditorSettings_Ctor(EditorSettings obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_EditorSpatialGizmo_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_EditorSpatialGizmo_Ctor(EditorSpatialGizmo obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_Environment_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_Environment_Ctor(Environment obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_EventPlayer_Ctor(EventPlayer obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_EventStream_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_EventStreamChibi_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_EventStreamChibi_Ctor(EventStreamChibi obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_FileDialog_Ctor(FileDialog obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_FixedMaterial_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_FixedMaterial_Ctor(FixedMaterial obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_Font_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_FuncRef_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_FuncRef_Ctor(FuncRef obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_GDFunctionState_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_GDNativeClass_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_GDScript_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_GDScript_Ctor(GDScript obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_Generic6DOFJoint_Ctor(Generic6DOFJoint obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_Globals_get_singleton();
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_GraphEdit_Ctor(GraphEdit obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_GraphNode_Ctor(GraphNode obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_GridContainer_Ctor(GridContainer obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_GridMap_Ctor(GridMap obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_GrooveJoint2D_Ctor(GrooveJoint2D obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_HBoxContainer_Ctor(HBoxContainer obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_HButtonArray_Ctor(HButtonArray obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_HScrollBar_Ctor(HScrollBar obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_HSeparator_Ctor(HSeparator obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_HSlider_Ctor(HSlider obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_HSplitContainer_Ctor(HSplitContainer obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_HTTPClient_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_HTTPClient_Ctor(HTTPClient obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_HTTPRequest_Ctor(HTTPRequest obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_HingeJoint_Ctor(HingeJoint obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_IP_get_singleton();
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_ImageTexture_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_ImageTexture_Ctor(ImageTexture obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_ImmediateGeometry_Ctor(ImmediateGeometry obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_Input_get_singleton();
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_InputMap_get_singleton();
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_InterpolatedCamera_Ctor(InterpolatedCamera obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_ItemList_Ctor(ItemList obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_KinematicBody_Ctor(KinematicBody obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_KinematicBody2D_Ctor(KinematicBody2D obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_Label_Ctor(Label obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_LargeTexture_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_LargeTexture_Ctor(LargeTexture obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_Light2D_Ctor(Light2D obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_LightOccluder2D_Ctor(LightOccluder2D obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_LineEdit_Ctor(LineEdit obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_LineShape2D_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_LineShape2D_Ctor(LineShape2D obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_LinkButton_Ctor(LinkButton obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_Listener_Ctor(Listener obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_MainLoop_Ctor(MainLoop obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_MarginContainer_Ctor(MarginContainer obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_Material_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_MaterialShader_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_MaterialShader_Ctor(MaterialShader obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_MaterialShaderGraph_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_MaterialShaderGraph_Ctor(MaterialShaderGraph obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_MenuButton_Ctor(MenuButton obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_Mesh_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_Mesh_Ctor(Mesh obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_MeshDataTool_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_MeshDataTool_Ctor(MeshDataTool obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_MeshInstance_Ctor(MeshInstance obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_MeshLibrary_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_MeshLibrary_Ctor(MeshLibrary obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_MultiMesh_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_MultiMesh_Ctor(MultiMesh obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_MultiMeshInstance_Ctor(MultiMeshInstance obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_Navigation_Ctor(Navigation obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_Navigation2D_Ctor(Navigation2D obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_NavigationMesh_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_NavigationMesh_Ctor(NavigationMesh obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_NavigationMeshInstance_Ctor(NavigationMeshInstance obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_NavigationPolygon_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_NavigationPolygon_Ctor(NavigationPolygon obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_NavigationPolygonInstance_Ctor(NavigationPolygonInstance obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_NetworkedMultiplayerENet_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_NetworkedMultiplayerENet_Ctor(NetworkedMultiplayerENet obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_NetworkedMultiplayerPeer_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_Node_Ctor(Node obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_Node2D_Ctor(Node2D obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_Object_Ctor(Object obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_OccluderPolygon2D_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_OccluderPolygon2D_Ctor(OccluderPolygon2D obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_OmniLight_Ctor(OmniLight obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_OptionButton_Ctor(OptionButton obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_PCKPacker_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_PCKPacker_Ctor(PCKPacker obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_PHashTranslation_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_PHashTranslation_Ctor(PHashTranslation obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_PackedDataContainer_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_PackedDataContainer_Ctor(PackedDataContainer obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_PackedDataContainerRef_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_PackedScene_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_PackedScene_Ctor(PackedScene obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_PacketPeer_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_PacketPeerStream_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_PacketPeerStream_Ctor(PacketPeerStream obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_PacketPeerUDP_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_PacketPeerUDP_Ctor(PacketPeerUDP obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_Panel_Ctor(Panel obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_PanelContainer_Ctor(PanelContainer obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_ParallaxBackground_Ctor(ParallaxBackground obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_ParallaxLayer_Ctor(ParallaxLayer obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_ParticleAttractor2D_Ctor(ParticleAttractor2D obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_Particles_Ctor(Particles obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_Particles2D_Ctor(Particles2D obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_Patch9Frame_Ctor(Patch9Frame obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_Path_Ctor(Path obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_Path2D_Ctor(Path2D obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_PathFollow_Ctor(PathFollow obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_PathFollow2D_Ctor(PathFollow2D obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_PathRemap_get_singleton();
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_Performance_get_singleton();
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_Physics2DServer_get_singleton();
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_Physics2DShapeQueryParameters_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_Physics2DShapeQueryParameters_Ctor(Physics2DShapeQueryParameters obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_Physics2DShapeQueryResult_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_Physics2DTestMotionResult_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_Physics2DTestMotionResult_Ctor(Physics2DTestMotionResult obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_PhysicsServer_get_singleton();
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_PhysicsShapeQueryParameters_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_PhysicsShapeQueryParameters_Ctor(PhysicsShapeQueryParameters obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_PhysicsShapeQueryResult_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_PinJoint_Ctor(PinJoint obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_PinJoint2D_Ctor(PinJoint2D obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_PlaneShape_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_PlaneShape_Ctor(PlaneShape obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_Polygon2D_Ctor(Polygon2D obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_PolygonPathFinder_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_PolygonPathFinder_Ctor(PolygonPathFinder obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_Popup_Ctor(Popup obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_PopupDialog_Ctor(PopupDialog obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_PopupMenu_Ctor(PopupMenu obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_PopupPanel_Ctor(PopupPanel obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_Portal_Ctor(Portal obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_Position2D_Ctor(Position2D obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_Position3D_Ctor(Position3D obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_ProgressBar_Ctor(ProgressBar obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_ProximityGroup_Ctor(ProximityGroup obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_Quad_Ctor(Quad obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_Range_Ctor(Range obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_RayCast_Ctor(RayCast obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_RayCast2D_Ctor(RayCast2D obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_RayShape_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_RayShape_Ctor(RayShape obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_RayShape2D_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_RayShape2D_Ctor(RayShape2D obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_RectangleShape2D_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_RectangleShape2D_Ctor(RectangleShape2D obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_Reference_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_Reference_Ctor(Reference obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_ReferenceFrame_Ctor(ReferenceFrame obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_RegEx_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_RegEx_Ctor(RegEx obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_RegExMatch_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_RegExMatch_Ctor(RegExMatch obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_RemoteTransform_Ctor(RemoteTransform obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_RemoteTransform2D_Ctor(RemoteTransform2D obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_RenderTargetTexture_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_Resource_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_Resource_Ctor(Resource obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_ResourceImportMetadata_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_ResourceImportMetadata_Ctor(ResourceImportMetadata obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_ResourceInteractiveLoader_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_ResourcePreloader_Ctor(ResourcePreloader obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_RichTextLabel_Ctor(RichTextLabel obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_RigidBody_Ctor(RigidBody obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_RigidBody2D_Ctor(RigidBody2D obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_Room_Ctor(Room obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_RoomBounds_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_RoomBounds_Ctor(RoomBounds obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_Sample_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_Sample_Ctor(Sample obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_SampleLibrary_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_SampleLibrary_Ctor(SampleLibrary obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_SamplePlayer_Ctor(SamplePlayer obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_SamplePlayer2D_Ctor(SamplePlayer2D obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_SceneState_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_SceneTree_Ctor(SceneTree obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_SceneTreeTimer_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_Script_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_ScrollContainer_Ctor(ScrollContainer obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_SegmentShape2D_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_SegmentShape2D_Ctor(SegmentShape2D obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_Shader_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_ShaderGraph_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_ShaderMaterial_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_ShaderMaterial_Ctor(ShaderMaterial obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_Shape_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_Shape2D_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_ShortCut_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_ShortCut_Ctor(ShortCut obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_Skeleton_Ctor(Skeleton obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_SliderJoint_Ctor(SliderJoint obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_SoundRoomParams_Ctor(SoundRoomParams obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_Spatial_Ctor(Spatial obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_SpatialGizmo_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_SpatialSamplePlayer_Ctor(SpatialSamplePlayer obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_SpatialSound2DServer_get_singleton();
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_SpatialSoundServer_get_singleton();
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_SpatialStreamPlayer_Ctor(SpatialStreamPlayer obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_SphereShape_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_SphereShape_Ctor(SphereShape obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_SpinBox_Ctor(SpinBox obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_SpotLight_Ctor(SpotLight obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_Sprite_Ctor(Sprite obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_Sprite3D_Ctor(Sprite3D obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_SpriteFrames_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_SpriteFrames_Ctor(SpriteFrames obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_StaticBody_Ctor(StaticBody obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_StaticBody2D_Ctor(StaticBody2D obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_StreamPeer_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_StreamPeerBuffer_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_StreamPeerBuffer_Ctor(StreamPeerBuffer obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_StreamPeerSSL_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_StreamPeerSSL_Ctor(StreamPeerSSL obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_StreamPeerTCP_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_StreamPeerTCP_Ctor(StreamPeerTCP obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_StreamPlayer_Ctor(StreamPlayer obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_StyleBox_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_StyleBoxEmpty_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_StyleBoxEmpty_Ctor(StyleBoxEmpty obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_StyleBoxFlat_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_StyleBoxFlat_Ctor(StyleBoxFlat obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_StyleBoxImageMask_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_StyleBoxImageMask_Ctor(StyleBoxImageMask obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_StyleBoxTexture_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_StyleBoxTexture_Ctor(StyleBoxTexture obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_SurfaceTool_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_SurfaceTool_Ctor(SurfaceTool obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_TCP_Server_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_TCP_Server_Ctor(TCP_Server obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_TabContainer_Ctor(TabContainer obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_Tabs_Ctor(Tabs obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_TestCube_Ctor(TestCube obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_TextEdit_Ctor(TextEdit obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_Texture_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_TextureButton_Ctor(TextureButton obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_TextureFrame_Ctor(TextureFrame obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_TextureProgress_Ctor(TextureProgress obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_Theme_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_Theme_Ctor(Theme obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_TileMap_Ctor(TileMap obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_TileSet_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_TileSet_Ctor(TileSet obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_Timer_Ctor(Timer obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_ToolButton_Ctor(ToolButton obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_TouchScreenButton_Ctor(TouchScreenButton obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_Translation_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_Translation_Ctor(Translation obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_TranslationServer_get_singleton();
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_Tree_Ctor(Tree obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_TriangleMesh_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_TriangleMesh_Ctor(TriangleMesh obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_Tween_Ctor(Tween obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_UndoRedo_Ctor(UndoRedo obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_VBoxContainer_Ctor(VBoxContainer obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_VButtonArray_Ctor(VButtonArray obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_VScrollBar_Ctor(VScrollBar obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_VSeparator_Ctor(VSeparator obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_VSlider_Ctor(VSlider obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_VSplitContainer_Ctor(VSplitContainer obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_VehicleBody_Ctor(VehicleBody obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_VehicleWheel_Ctor(VehicleWheel obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_VideoPlayer_Ctor(VideoPlayer obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_VideoStream_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_VideoStreamTheora_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_VideoStreamTheora_Ctor(VideoStreamTheora obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_VideoStreamWebm_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_VideoStreamWebm_Ctor(VideoStreamWebm obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_Viewport_Ctor(Viewport obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_ViewportSprite_Ctor(ViewportSprite obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_VisibilityEnabler_Ctor(VisibilityEnabler obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_VisibilityEnabler2D_Ctor(VisibilityEnabler2D obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_VisibilityNotifier_Ctor(VisibilityNotifier obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_VisibilityNotifier2D_Ctor(VisibilityNotifier2D obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_VisualScript_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_VisualScript_Ctor(VisualScript obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_VisualScriptBasicTypeConstant_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_VisualScriptBasicTypeConstant_Ctor(VisualScriptBasicTypeConstant obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_VisualScriptBuiltinFunc_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_VisualScriptBuiltinFunc_Ctor(VisualScriptBuiltinFunc obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_VisualScriptClassConstant_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_VisualScriptClassConstant_Ctor(VisualScriptClassConstant obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_VisualScriptComment_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_VisualScriptComment_Ctor(VisualScriptComment obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_VisualScriptCondition_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_VisualScriptCondition_Ctor(VisualScriptCondition obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_VisualScriptConstant_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_VisualScriptConstant_Ctor(VisualScriptConstant obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_VisualScriptConstructor_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_VisualScriptConstructor_Ctor(VisualScriptConstructor obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_VisualScriptCustomNode_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_VisualScriptCustomNode_Ctor(VisualScriptCustomNode obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_VisualScriptDeconstruct_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_VisualScriptDeconstruct_Ctor(VisualScriptDeconstruct obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_VisualScriptEmitSignal_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_VisualScriptEmitSignal_Ctor(VisualScriptEmitSignal obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_VisualScriptEngineSingleton_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_VisualScriptEngineSingleton_Ctor(VisualScriptEngineSingleton obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_VisualScriptExpression_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_VisualScriptExpression_Ctor(VisualScriptExpression obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_VisualScriptFunction_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_VisualScriptFunction_Ctor(VisualScriptFunction obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_VisualScriptFunctionCall_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_VisualScriptFunctionCall_Ctor(VisualScriptFunctionCall obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_VisualScriptFunctionState_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_VisualScriptGlobalConstant_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_VisualScriptGlobalConstant_Ctor(VisualScriptGlobalConstant obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_VisualScriptIndexGet_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_VisualScriptIndexGet_Ctor(VisualScriptIndexGet obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_VisualScriptIndexSet_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_VisualScriptIndexSet_Ctor(VisualScriptIndexSet obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_VisualScriptInputAction_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_VisualScriptInputAction_Ctor(VisualScriptInputAction obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_VisualScriptInputFilter_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_VisualScriptInputFilter_Ctor(VisualScriptInputFilter obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_VisualScriptIterator_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_VisualScriptIterator_Ctor(VisualScriptIterator obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_VisualScriptLocalVar_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_VisualScriptLocalVar_Ctor(VisualScriptLocalVar obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_VisualScriptLocalVarSet_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_VisualScriptLocalVarSet_Ctor(VisualScriptLocalVarSet obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_VisualScriptMathConstant_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_VisualScriptMathConstant_Ctor(VisualScriptMathConstant obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_VisualScriptNode_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_VisualScriptOperator_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_VisualScriptOperator_Ctor(VisualScriptOperator obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_VisualScriptPreload_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_VisualScriptPreload_Ctor(VisualScriptPreload obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_VisualScriptPropertyGet_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_VisualScriptPropertyGet_Ctor(VisualScriptPropertyGet obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_VisualScriptPropertySet_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_VisualScriptPropertySet_Ctor(VisualScriptPropertySet obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_VisualScriptResourcePath_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_VisualScriptResourcePath_Ctor(VisualScriptResourcePath obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_VisualScriptReturn_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_VisualScriptReturn_Ctor(VisualScriptReturn obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_VisualScriptSceneNode_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_VisualScriptSceneNode_Ctor(VisualScriptSceneNode obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_VisualScriptSceneTree_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_VisualScriptSceneTree_Ctor(VisualScriptSceneTree obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_VisualScriptSelf_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_VisualScriptSelf_Ctor(VisualScriptSelf obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_VisualScriptSequence_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_VisualScriptSequence_Ctor(VisualScriptSequence obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_VisualScriptSubCall_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_VisualScriptSubCall_Ctor(VisualScriptSubCall obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_VisualScriptSwitch_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_VisualScriptSwitch_Ctor(VisualScriptSwitch obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_VisualScriptTypeCast_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_VisualScriptTypeCast_Ctor(VisualScriptTypeCast obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_VisualScriptVariableGet_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_VisualScriptVariableGet_Ctor(VisualScriptVariableGet obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_VisualScriptVariableSet_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_VisualScriptVariableSet_Ctor(VisualScriptVariableSet obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_VisualScriptWhile_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_VisualScriptWhile_Ctor(VisualScriptWhile obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_VisualScriptYield_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_VisualScriptYield_Ctor(VisualScriptYield obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_VisualScriptYieldSignal_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_VisualScriptYieldSignal_Ctor(VisualScriptYieldSignal obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_VisualServer_get_singleton();
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_WeakRef_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_WeakRef_Ctor(WeakRef obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_WindowDialog_Ctor(WindowDialog obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_World_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_World_Ctor(World obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_World2D_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_World2D_Ctor(World2D obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_WorldEnvironment_Ctor(WorldEnvironment obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_XMLParser_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_XMLParser_Ctor(XMLParser obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_YSort_Ctor(YSort obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_Directory_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_Directory_Ctor(Directory obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_File_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_File_Ctor(File obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall__Geometry_get_singleton();
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall__Marshalls_get_singleton();
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_Mutex_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_Mutex_Ctor(Mutex obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall__OS_get_singleton();
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall__ResourceLoader_get_singleton();
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall__ResourceSaver_get_singleton();
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_Semaphore_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_Semaphore_Ctor(Semaphore obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_Thread_Dtor(IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_Thread_Ctor(Thread obj);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static int godot_icall_0_0(IntPtr method, IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_3_1(IntPtr method, IntPtr ptr, int arg1, ref Vector3 arg2, float arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static object godot_icall_1_2(IntPtr method, IntPtr ptr, int arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static float godot_icall_1_3(IntPtr method, IntPtr ptr, int arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_1_4(IntPtr method, IntPtr ptr, int arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_2_5(IntPtr method, IntPtr ptr, int arg1, int arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static bool godot_icall_2_6(IntPtr method, IntPtr ptr, int arg1, int arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_0_7(IntPtr method, IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static int godot_icall_1_8(IntPtr method, IntPtr ptr, ref Vector3 arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static object godot_icall_1_9(IntPtr method, IntPtr ptr, ref Vector3 arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static Vector3[] godot_icall_2_10(IntPtr method, IntPtr ptr, int arg1, int arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static int[] godot_icall_2_11(IntPtr method, IntPtr ptr, int arg1, int arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static Object godot_icall_0_12(IntPtr method, IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_1_13(IntPtr method, IntPtr ptr, bool arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static bool godot_icall_0_14(IntPtr method, IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static Button godot_icall_3_15(IntPtr method, IntPtr ptr, string arg1, bool arg2, string arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static Button godot_icall_1_16(IntPtr method, IntPtr ptr, string arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static LineEdit godot_icall_1_17(IntPtr method, IntPtr ptr, IntPtr arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_1_18(IntPtr method, IntPtr ptr, string arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static string godot_icall_0_19(IntPtr method, IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_1_20(IntPtr method, IntPtr ptr, IntPtr arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_1_21(IntPtr method, IntPtr ptr, IntPtr arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static SpriteFrames godot_icall_0_22(IntPtr method, IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_1_23(IntPtr method, IntPtr ptr, ref Vector2 arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static object godot_icall_0_24(IntPtr method, IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_1_25(IntPtr method, IntPtr ptr, ref Color arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static object godot_icall_0_26(IntPtr method, IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static int godot_icall_2_27(IntPtr method, IntPtr ptr, int arg1, int arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static int godot_icall_1_28(IntPtr method, IntPtr ptr, int arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_1_29(IntPtr method, IntPtr ptr, int arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_2_30(IntPtr method, IntPtr ptr, int arg1, IntPtr arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static int godot_icall_1_31(IntPtr method, IntPtr ptr, IntPtr arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_2_32(IntPtr method, IntPtr ptr, int arg1, bool arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static bool godot_icall_1_33(IntPtr method, IntPtr ptr, int arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static int godot_icall_5_34(IntPtr method, IntPtr ptr, int arg1, float arg2, ref Vector3 arg3, ref Quat arg4, ref Vector3 arg5);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_4_35(IntPtr method, IntPtr ptr, int arg1, float arg2, object arg3, float arg4);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_2_36(IntPtr method, IntPtr ptr, int arg1, float arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_3_37(IntPtr method, IntPtr ptr, int arg1, int arg2, object arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_3_38(IntPtr method, IntPtr ptr, int arg1, int arg2, float arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static float godot_icall_2_39(IntPtr method, IntPtr ptr, int arg1, int arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static int godot_icall_3_40(IntPtr method, IntPtr ptr, int arg1, float arg2, bool arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static object[] godot_icall_2_41(IntPtr method, IntPtr ptr, int arg1, float arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static int[] godot_icall_3_42(IntPtr method, IntPtr ptr, int arg1, float arg2, float arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static string godot_icall_2_43(IntPtr method, IntPtr ptr, int arg1, int arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static object[] godot_icall_2_44(IntPtr method, IntPtr ptr, int arg1, int arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_1_45(IntPtr method, IntPtr ptr, float arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static float godot_icall_0_46(IntPtr method, IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static int godot_icall_2_47(IntPtr method, IntPtr ptr, string arg1, IntPtr arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_2_48(IntPtr method, IntPtr ptr, string arg1, string arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static bool godot_icall_1_49(IntPtr method, IntPtr ptr, string arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static Animation godot_icall_1_50(IntPtr method, IntPtr ptr, string arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static string[] godot_icall_0_51(IntPtr method, IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static string godot_icall_1_52(IntPtr method, IntPtr ptr, string arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_3_53(IntPtr method, IntPtr ptr, string arg1, string arg2, float arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static float godot_icall_2_54(IntPtr method, IntPtr ptr, string arg1, string arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_4_55(IntPtr method, IntPtr ptr, string arg1, float arg2, float arg3, bool arg4);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_2_56(IntPtr method, IntPtr ptr, string arg1, float arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_1_57(IntPtr method, IntPtr ptr, IntPtr arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_0_58(IntPtr method, IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_2_59(IntPtr method, IntPtr ptr, float arg1, bool arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static string godot_icall_1_60(IntPtr method, IntPtr ptr, IntPtr arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_2_61(IntPtr method, IntPtr ptr, int arg1, string arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static int godot_icall_2_62(IntPtr method, IntPtr ptr, string arg1, string arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static int godot_icall_1_63(IntPtr method, IntPtr ptr, string arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static string godot_icall_2_64(IntPtr method, IntPtr ptr, string arg1, int arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_2_65(IntPtr method, IntPtr ptr, string arg1, IntPtr arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_3_66(IntPtr method, IntPtr ptr, string arg1, IntPtr arg2, bool arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static float godot_icall_1_67(IntPtr method, IntPtr ptr, string arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_2_68(IntPtr method, IntPtr ptr, string arg1, bool arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_2_69(IntPtr method, IntPtr ptr, string arg1, ref Vector2 arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static object godot_icall_1_70(IntPtr method, IntPtr ptr, string arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_2_71(IntPtr method, IntPtr ptr, string arg1, int arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_3_72(IntPtr method, IntPtr ptr, string arg1, int arg2, bool arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static bool godot_icall_2_73(IntPtr method, IntPtr ptr, string arg1, int arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static int godot_icall_3_74(IntPtr method, IntPtr ptr, string arg1, string arg2, int arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static bool godot_icall_3_75(IntPtr method, IntPtr ptr, string arg1, string arg2, int arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_1_76(IntPtr method, IntPtr ptr, ref Vector3 arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static object godot_icall_0_77(IntPtr method, IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static object[] godot_icall_0_78(IntPtr method, IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static bool godot_icall_1_79(IntPtr method, IntPtr ptr, IntPtr arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static Texture godot_icall_0_80(IntPtr method, IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_1_81(IntPtr method, IntPtr ptr, ref Rect2 arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static object godot_icall_0_82(IntPtr method, IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_3_83(IntPtr method, IntPtr ptr, int arg1, bool arg2, int arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_2_84(IntPtr method, IntPtr ptr, IntPtr arg1, string arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static string godot_icall_1_85(IntPtr method, IntPtr ptr, IntPtr arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static int godot_icall_1_86(IntPtr method, IntPtr ptr, IntPtr arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static bool godot_icall_1_87(IntPtr method, IntPtr ptr, IntPtr arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_2_88(IntPtr method, IntPtr ptr, IntPtr arg1, float[] arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_2_89(IntPtr method, IntPtr ptr, IntPtr arg1, byte[] arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static byte[] godot_icall_1_90(IntPtr method, IntPtr ptr, IntPtr arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_2_91(IntPtr method, IntPtr ptr, IntPtr arg1, int arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_0_92(IntPtr method, IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_2_93(IntPtr method, IntPtr ptr, IntPtr arg1, IntPtr arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_2_94(IntPtr method, IntPtr ptr, IntPtr arg1, float arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_4_95(IntPtr method, IntPtr ptr, IntPtr arg1, float arg2, float arg3, float arg4);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_5_96(IntPtr method, IntPtr ptr, IntPtr arg1, int arg2, float arg3, float arg4, float arg5);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_3_97(IntPtr method, IntPtr ptr, IntPtr arg1, int arg2, float arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_2_98(IntPtr method, IntPtr ptr, IntPtr arg1, bool arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static float godot_icall_1_99(IntPtr method, IntPtr ptr, IntPtr arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_1_100(IntPtr method, IntPtr ptr, IntPtr arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_1_101(IntPtr method, IntPtr ptr, byte[] arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static byte[] godot_icall_0_102(IntPtr method, IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_1_103(IntPtr method, IntPtr ptr, int[] arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static int[] godot_icall_0_104(IntPtr method, IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_2_105(IntPtr method, IntPtr ptr, IntPtr arg1, ref Vector2 arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_1_106(IntPtr method, IntPtr ptr, IntPtr arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_2_107(IntPtr method, IntPtr ptr, ref Vector2 arg1, bool arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static bool godot_icall_1_108(IntPtr method, IntPtr ptr, ref Vector2 arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_2_109(IntPtr method, IntPtr ptr, ref Rect2 arg1, bool arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_3_110(IntPtr method, IntPtr ptr, int arg1, int arg2, int arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_5_111(IntPtr method, IntPtr ptr, int arg1, int arg2, ref Rect2 arg3, ref Vector2 arg4, float arg5);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static Texture godot_icall_1_112(IntPtr method, IntPtr ptr, int arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static object godot_icall_2_113(IntPtr method, IntPtr ptr, int arg1, int arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_3_114(IntPtr method, IntPtr ptr, IntPtr arg1, string arg2, string arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_2_115(IntPtr method, IntPtr ptr, int arg1, IntPtr arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static string godot_icall_1_116(IntPtr method, IntPtr ptr, int arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static BaseButton godot_icall_0_117(IntPtr method, IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static object godot_icall_1_118(IntPtr method, IntPtr ptr, ref Vector2 arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static object godot_icall_1_119(IntPtr method, IntPtr ptr, ref Vector3 arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static bool godot_icall_1_120(IntPtr method, IntPtr ptr, ref Vector3 arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_3_121(IntPtr method, IntPtr ptr, float arg1, float arg2, float arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static object godot_icall_0_122(IntPtr method, IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static Environment godot_icall_0_123(IntPtr method, IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static Viewport godot_icall_0_124(IntPtr method, IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_1_125(IntPtr method, IntPtr ptr, object arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static object godot_icall_0_126(IntPtr method, IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_5_127(IntPtr method, IntPtr ptr, ref Vector2 arg1, ref Vector2 arg2, ref Color arg3, float arg4, bool arg5);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_2_128(IntPtr method, IntPtr ptr, ref Rect2 arg1, ref Color arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_3_129(IntPtr method, IntPtr ptr, ref Vector2 arg1, float arg2, ref Color arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_3_130(IntPtr method, IntPtr ptr, IntPtr arg1, ref Vector2 arg2, ref Color arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_5_131(IntPtr method, IntPtr ptr, IntPtr arg1, ref Rect2 arg2, bool arg3, ref Color arg4, bool arg5);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_5_132(IntPtr method, IntPtr ptr, IntPtr arg1, ref Rect2 arg2, ref Rect2 arg3, ref Color arg4, bool arg5);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_2_133(IntPtr method, IntPtr ptr, IntPtr arg1, ref Rect2 arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_5_134(IntPtr method, IntPtr ptr, Vector2[] arg1, Color[] arg2, Vector2[] arg3, IntPtr arg4, float arg5);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_4_135(IntPtr method, IntPtr ptr, Vector2[] arg1, Color[] arg2, Vector2[] arg3, IntPtr arg4);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_4_136(IntPtr method, IntPtr ptr, Vector2[] arg1, ref Color arg2, Vector2[] arg3, IntPtr arg4);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_5_137(IntPtr method, IntPtr ptr, IntPtr arg1, ref Vector2 arg2, string arg3, ref Color arg4, int arg5);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static float godot_icall_5_138(IntPtr method, IntPtr ptr, IntPtr arg1, ref Vector2 arg2, string arg3, string arg4, ref Color arg5);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_3_139(IntPtr method, IntPtr ptr, ref Vector2 arg1, float arg2, ref Vector2 arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_1_140(IntPtr method, IntPtr ptr, ref Matrix32 arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static object godot_icall_0_141(IntPtr method, IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static CanvasItemMaterial godot_icall_0_142(IntPtr method, IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static object godot_icall_1_143(IntPtr method, IntPtr ptr, ref Vector2 arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static object godot_icall_1_144(IntPtr method, IntPtr ptr, ref InputEvent arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static Shader godot_icall_0_145(IntPtr method, IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_2_146(IntPtr method, IntPtr ptr, string arg1, object arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static World2D godot_icall_0_147(IntPtr method, IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_2_148(IntPtr method, IntPtr ptr, IntPtr arg1, ref Transform arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_2_149(IntPtr method, IntPtr ptr, int arg1, ref Transform arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static Shape godot_icall_1_150(IntPtr method, IntPtr ptr, int arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static object godot_icall_1_151(IntPtr method, IntPtr ptr, int arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_2_152(IntPtr method, IntPtr ptr, IntPtr arg1, ref Matrix32 arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_2_153(IntPtr method, IntPtr ptr, int arg1, ref Matrix32 arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static Shape2D godot_icall_1_154(IntPtr method, IntPtr ptr, int arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static object godot_icall_1_155(IntPtr method, IntPtr ptr, int arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_1_156(IntPtr method, IntPtr ptr, Vector2[] arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static Vector2[] godot_icall_0_157(IntPtr method, IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static ColorPicker godot_icall_0_158(IntPtr method, IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_2_159(IntPtr method, IntPtr ptr, float arg1, ref Color arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_2_160(IntPtr method, IntPtr ptr, int arg1, ref Color arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static object godot_icall_1_161(IntPtr method, IntPtr ptr, int arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static object godot_icall_1_162(IntPtr method, IntPtr ptr, float arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_1_163(IntPtr method, IntPtr ptr, float[] arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static float[] godot_icall_0_164(IntPtr method, IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_1_165(IntPtr method, IntPtr ptr, Color[] arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static Color[] godot_icall_0_166(IntPtr method, IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_1_167(IntPtr method, IntPtr ptr, Vector3[] arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static Vector3[] godot_icall_0_168(IntPtr method, IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_3_169(IntPtr method, IntPtr ptr, string arg1, string arg2, object arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static object godot_icall_3_170(IntPtr method, IntPtr ptr, string arg1, string arg2, object arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static bool godot_icall_2_171(IntPtr method, IntPtr ptr, string arg1, string arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static string[] godot_icall_1_172(IntPtr method, IntPtr ptr, string arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static int godot_icall_1_173(IntPtr method, IntPtr ptr, string arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static Button godot_icall_0_174(IntPtr method, IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_2_175(IntPtr method, IntPtr ptr, IntPtr arg1, ref Rect2 arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_3_176(IntPtr method, IntPtr ptr, int arg1, int arg2, bool arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static Control godot_icall_0_177(IntPtr method, IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static Theme godot_icall_0_178(IntPtr method, IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_2_179(IntPtr method, IntPtr ptr, string arg1, ref Color arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static Texture godot_icall_2_180(IntPtr method, IntPtr ptr, string arg1, string arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static StyleBox godot_icall_2_181(IntPtr method, IntPtr ptr, string arg1, string arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static Font godot_icall_2_182(IntPtr method, IntPtr ptr, string arg1, string arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static object godot_icall_2_183(IntPtr method, IntPtr ptr, string arg1, string arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static string godot_icall_1_184(IntPtr method, IntPtr ptr, ref Vector2 arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static int godot_icall_1_185(IntPtr method, IntPtr ptr, ref Vector2 arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_2_186(IntPtr method, IntPtr ptr, object arg1, IntPtr arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_2_187(IntPtr method, IntPtr ptr, int arg1, IntPtr arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_1_188(IntPtr method, IntPtr ptr, int arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_4_189(IntPtr method, IntPtr ptr, ref Vector2 arg1, ref Vector2 arg2, ref Vector2 arg3, int arg4);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_2_190(IntPtr method, IntPtr ptr, int arg1, ref Vector2 arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static object godot_icall_1_191(IntPtr method, IntPtr ptr, int arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static object godot_icall_2_192(IntPtr method, IntPtr ptr, int arg1, float arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static object godot_icall_1_193(IntPtr method, IntPtr ptr, float arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static object godot_icall_2_194(IntPtr method, IntPtr ptr, float arg1, bool arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static Vector2[] godot_icall_2_195(IntPtr method, IntPtr ptr, int arg1, float arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_4_196(IntPtr method, IntPtr ptr, ref Vector3 arg1, ref Vector3 arg2, ref Vector3 arg3, int arg4);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_2_197(IntPtr method, IntPtr ptr, int arg1, ref Vector3 arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static object godot_icall_2_198(IntPtr method, IntPtr ptr, int arg1, float arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static object godot_icall_1_199(IntPtr method, IntPtr ptr, float arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static object godot_icall_2_200(IntPtr method, IntPtr ptr, float arg1, bool arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static Vector3[] godot_icall_2_201(IntPtr method, IntPtr ptr, int arg1, float arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static DynamicFontData godot_icall_0_202(IntPtr method, IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static DynamicFontData godot_icall_1_203(IntPtr method, IntPtr ptr, int arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static VBoxContainer godot_icall_0_204(IntPtr method, IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static EditorFileSystemDirectory godot_icall_0_205(IntPtr method, IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static EditorFileSystemDirectory godot_icall_1_206(IntPtr method, IntPtr ptr, string arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static Object godot_icall_1_207(IntPtr method, IntPtr ptr, int arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_2_208(IntPtr method, IntPtr ptr, int arg1, IntPtr arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static ToolButton godot_icall_2_209(IntPtr method, IntPtr ptr, IntPtr arg1, string arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_4_210(IntPtr method, IntPtr ptr, string arg1, string arg2, IntPtr arg3, IntPtr arg4);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static EditorResourcePreview godot_icall_0_211(IntPtr method, IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static EditorFileSystem godot_icall_0_212(IntPtr method, IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_2_213(IntPtr method, IntPtr ptr, IntPtr arg1, string arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static UndoRedo godot_icall_0_214(IntPtr method, IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static EditorSelection godot_icall_0_215(IntPtr method, IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static EditorSettings godot_icall_0_216(IntPtr method, IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_4_217(IntPtr method, IntPtr ptr, string arg1, IntPtr arg2, string arg3, object arg4);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_4_218(IntPtr method, IntPtr ptr, IntPtr arg1, IntPtr arg2, string arg3, object arg4);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_1_219(IntPtr method, IntPtr ptr, Dictionary<object, object> arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_1_220(IntPtr method, IntPtr ptr, string[] arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_3_221(IntPtr method, IntPtr ptr, Vector3[] arg1, IntPtr arg2, bool arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_3_222(IntPtr method, IntPtr ptr, IntPtr arg1, bool arg2, IntPtr arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_2_223(IntPtr method, IntPtr ptr, IntPtr arg1, float arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_3_224(IntPtr method, IntPtr ptr, Vector3[] arg1, bool arg2, bool arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_2_225(IntPtr method, IntPtr ptr, int arg1, object arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static EventStream godot_icall_0_226(IntPtr method, IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_1_227(IntPtr method, IntPtr ptr, ref Transform arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_5_228(IntPtr method, IntPtr ptr, IntPtr arg1, ref Vector2 arg2, string arg3, ref Color arg4, int arg5);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static float godot_icall_5_229(IntPtr method, IntPtr ptr, IntPtr arg1, ref Vector2 arg2, int arg3, int arg4, ref Color arg5);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static object godot_icall_1_230(IntPtr method, IntPtr ptr, object[] arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static object godot_icall_1_231(IntPtr method, IntPtr ptr, object arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static Object godot_icall_1_232(IntPtr method, IntPtr ptr, object[] arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static Object godot_icall_1_233(IntPtr method, IntPtr ptr, string arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static int godot_icall_4_234(IntPtr method, IntPtr ptr, string arg1, int arg2, string arg3, int arg4);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static bool godot_icall_4_235(IntPtr method, IntPtr ptr, string arg1, int arg2, string arg3, int arg4);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_4_236(IntPtr method, IntPtr ptr, string arg1, int arg2, string arg3, int arg4);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_9_237(IntPtr method, IntPtr ptr, int arg1, bool arg2, int arg3, ref Color arg4, bool arg5, int arg6, ref Color arg7, IntPtr arg8, IntPtr arg9);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static MeshLibrary godot_icall_0_238(IntPtr method, IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_5_239(IntPtr method, IntPtr ptr, int arg1, int arg2, int arg3, int arg4, int arg5);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static int godot_icall_3_240(IntPtr method, IntPtr ptr, int arg1, int arg2, int arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_4_241(IntPtr method, IntPtr ptr, bool arg1, bool arg2, int arg3, int arg4);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static int godot_icall_2_242(IntPtr method, IntPtr ptr, int arg1, ref AABB arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static object godot_icall_1_243(IntPtr method, IntPtr ptr, int arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static int godot_icall_5_244(IntPtr method, IntPtr ptr, string arg1, int arg2, bool arg3, bool arg4, int arg5);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static StreamPeer godot_icall_0_245(IntPtr method, IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static int godot_icall_4_246(IntPtr method, IntPtr ptr, int arg1, string arg2, string[] arg3, byte[] arg4);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static int godot_icall_4_247(IntPtr method, IntPtr ptr, int arg1, string arg2, string[] arg3, string arg4);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static int godot_icall_1_248(IntPtr method, IntPtr ptr, byte[] arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static Dictionary<object, object> godot_icall_0_249(IntPtr method, IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static int godot_icall_0_250(IntPtr method, IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static string godot_icall_1_251(IntPtr method, IntPtr ptr, Dictionary<object, object> arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static int godot_icall_5_252(IntPtr method, IntPtr ptr, string arg1, string[] arg2, bool arg3, int arg4, string arg5);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static int godot_icall_2_253(IntPtr method, IntPtr ptr, string arg1, int arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_4_254(IntPtr method, IntPtr ptr, int arg1, int arg2, int arg3, int arg4);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_2_255(IntPtr method, IntPtr ptr, IntPtr arg1, int arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_0_256(IntPtr method, IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_1_257(IntPtr method, IntPtr ptr, ref Plane arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_4_258(IntPtr method, IntPtr ptr, int arg1, int arg2, float arg3, bool arg4);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_4_259(IntPtr method, IntPtr ptr, int arg1, float arg2, float arg3, float arg4);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_2_260(IntPtr method, IntPtr ptr, string arg1, ref InputEvent arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static bool godot_icall_2_261(IntPtr method, IntPtr ptr, string arg1, ref InputEvent arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static object[] godot_icall_1_262(IntPtr method, IntPtr ptr, string arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static bool godot_icall_2_263(IntPtr method, IntPtr ptr, ref InputEvent arg1, string arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static Dictionary<object, object> godot_icall_1_264(IntPtr method, IntPtr ptr, bool arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_3_265(IntPtr method, IntPtr ptr, string arg1, IntPtr arg2, bool arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_2_266(IntPtr method, IntPtr ptr, IntPtr arg1, bool arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_2_267(IntPtr method, IntPtr ptr, int arg1, ref Rect2 arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static object godot_icall_1_268(IntPtr method, IntPtr ptr, int arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static int godot_icall_2_269(IntPtr method, IntPtr ptr, ref Vector2 arg1, bool arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static object godot_icall_4_270(IntPtr method, IntPtr ptr, ref Vector2 arg1, ref Vector2 arg2, float arg3, int arg4);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static bool godot_icall_2_271(IntPtr method, IntPtr ptr, ref Matrix32 arg1, ref Vector2 arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static int godot_icall_2_272(IntPtr method, IntPtr ptr, ref Vector2 arg1, IntPtr arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static OccluderPolygon2D godot_icall_0_273(IntPtr method, IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static PopupMenu godot_icall_0_274(IntPtr method, IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_1_275(IntPtr method, IntPtr ptr, ref InputEvent arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static bool godot_icall_1_276(IntPtr method, IntPtr ptr, float arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_4_277(IntPtr method, IntPtr ptr, int arg1, object[] arg2, object[] arg3, bool arg4);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static Material godot_icall_1_278(IntPtr method, IntPtr ptr, int arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_1_279(IntPtr method, IntPtr ptr, ref AABB arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static object godot_icall_0_280(IntPtr method, IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static int godot_icall_2_281(IntPtr method, IntPtr ptr, IntPtr arg1, int arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static int godot_icall_1_282(IntPtr method, IntPtr ptr, IntPtr arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_2_283(IntPtr method, IntPtr ptr, int arg1, ref Plane arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static object godot_icall_1_284(IntPtr method, IntPtr ptr, int arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_2_285(IntPtr method, IntPtr ptr, int arg1, int[] arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static int[] godot_icall_1_286(IntPtr method, IntPtr ptr, int arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_2_287(IntPtr method, IntPtr ptr, int arg1, float[] arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static float[] godot_icall_1_288(IntPtr method, IntPtr ptr, int arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static Mesh godot_icall_0_289(IntPtr method, IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static Mesh godot_icall_1_290(IntPtr method, IntPtr ptr, int arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static NavigationMesh godot_icall_1_291(IntPtr method, IntPtr ptr, int arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static int godot_icall_3_292(IntPtr method, IntPtr ptr, IntPtr arg1, ref Transform arg2, IntPtr arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static Vector3[] godot_icall_3_293(IntPtr method, IntPtr ptr, ref Vector3 arg1, ref Vector3 arg2, bool arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static object godot_icall_3_294(IntPtr method, IntPtr ptr, ref Vector3 arg1, ref Vector3 arg2, bool arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static Object godot_icall_1_295(IntPtr method, IntPtr ptr, ref Vector3 arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static int godot_icall_3_296(IntPtr method, IntPtr ptr, IntPtr arg1, ref Matrix32 arg2, IntPtr arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static Vector2[] godot_icall_3_297(IntPtr method, IntPtr ptr, ref Vector2 arg1, ref Vector2 arg2, bool arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static Object godot_icall_1_298(IntPtr method, IntPtr ptr, ref Vector2 arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_2_299(IntPtr method, IntPtr ptr, Vector2[] arg1, int arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_2_300(IntPtr method, IntPtr ptr, int arg1, Vector2[] arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static Vector2[] godot_icall_1_301(IntPtr method, IntPtr ptr, int arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static NavigationPolygon godot_icall_0_302(IntPtr method, IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static int godot_icall_4_303(IntPtr method, IntPtr ptr, int arg1, int arg2, int arg3, int arg4);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static int godot_icall_4_304(IntPtr method, IntPtr ptr, string arg1, int arg2, int arg3, int arg4);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_2_305(IntPtr method, IntPtr ptr, IntPtr arg1, bool arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static Node godot_icall_1_306(IntPtr method, IntPtr ptr, int arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static bool godot_icall_1_307(IntPtr method, IntPtr ptr, IntPtr arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static Node godot_icall_1_308(IntPtr method, IntPtr ptr, IntPtr arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static Node godot_icall_0_309(IntPtr method, IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static Node godot_icall_3_310(IntPtr method, IntPtr ptr, string arg1, bool arg2, bool arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static object[] godot_icall_1_311(IntPtr method, IntPtr ptr, IntPtr arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_1_312(IntPtr method, IntPtr ptr, IntPtr arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_2_313(IntPtr method, IntPtr ptr, IntPtr arg1, int arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static SceneTree godot_icall_0_314(IntPtr method, IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static Node godot_icall_1_315(IntPtr method, IntPtr ptr, bool arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_2_316(IntPtr method, IntPtr ptr, string arg1, object[] arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_3_317(IntPtr method, IntPtr ptr, int arg1, string arg2, object[] arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_3_318(IntPtr method, IntPtr ptr, int arg1, string arg2, object arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static float godot_icall_1_319(IntPtr method, IntPtr ptr, ref Vector2 arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static object godot_icall_1_320(IntPtr method, IntPtr ptr, IntPtr arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static Script godot_icall_0_321(IntPtr method, IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_2_322(IntPtr method, IntPtr ptr, string arg1, object[] arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static object godot_icall_2_323(IntPtr method, IntPtr ptr, string arg1, object[] arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static object godot_icall_2_324(IntPtr method, IntPtr ptr, string arg1, object[] arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static int godot_icall_5_325(IntPtr method, IntPtr ptr, string arg1, IntPtr arg2, string arg3, object[] arg4, int arg5);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_3_326(IntPtr method, IntPtr ptr, string arg1, IntPtr arg2, string arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static bool godot_icall_3_327(IntPtr method, IntPtr ptr, string arg1, IntPtr arg2, string arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_3_328(IntPtr method, IntPtr ptr, IntPtr arg1, string arg2, int arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static int godot_icall_1_329(IntPtr method, IntPtr ptr, bool arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static int godot_icall_1_330(IntPtr method, IntPtr ptr, object arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static SceneState godot_icall_0_331(IntPtr method, IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static int godot_icall_1_332(IntPtr method, IntPtr ptr, object arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static int godot_icall_1_333(IntPtr method, IntPtr ptr, byte[] arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static int godot_icall_3_334(IntPtr method, IntPtr ptr, int arg1, int arg2, int arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static int godot_icall_3_335(IntPtr method, IntPtr ptr, string arg1, int arg2, int arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static Material godot_icall_0_336(IntPtr method, IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static Texture godot_icall_1_337(IntPtr method, IntPtr ptr, IntPtr arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static ColorRamp godot_icall_1_338(IntPtr method, IntPtr ptr, IntPtr arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static ColorRamp godot_icall_0_339(IntPtr method, IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static Curve3D godot_icall_0_340(IntPtr method, IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static Curve2D godot_icall_0_341(IntPtr method, IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_3_342(IntPtr method, IntPtr ptr, string arg1, string arg2, string arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_1_343(IntPtr method, IntPtr ptr, int arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static object godot_icall_1_344(IntPtr method, IntPtr ptr, int arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static Physics2DDirectSpaceState godot_icall_0_345(IntPtr method, IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static object[] godot_icall_5_346(IntPtr method, IntPtr ptr, ref Vector2 arg1, int arg2, object[] arg3, int arg4, int arg5);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static Dictionary<object, object> godot_icall_5_347(IntPtr method, IntPtr ptr, ref Vector2 arg1, ref Vector2 arg2, object[] arg3, int arg4, int arg5);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static object[] godot_icall_2_348(IntPtr method, IntPtr ptr, IntPtr arg1, int arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static object[] godot_icall_1_349(IntPtr method, IntPtr ptr, IntPtr arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static Dictionary<object, object> godot_icall_1_350(IntPtr method, IntPtr ptr, IntPtr arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_2_351(IntPtr method, IntPtr ptr, IntPtr arg1, object arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static float godot_icall_2_352(IntPtr method, IntPtr ptr, IntPtr arg1, int arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static Physics2DDirectSpaceState godot_icall_1_353(IntPtr method, IntPtr ptr, IntPtr arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_1_354(IntPtr method, IntPtr ptr, IntPtr arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_3_355(IntPtr method, IntPtr ptr, IntPtr arg1, IntPtr arg2, ref Matrix32 arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_3_356(IntPtr method, IntPtr ptr, IntPtr arg1, int arg2, IntPtr arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_3_357(IntPtr method, IntPtr ptr, IntPtr arg1, int arg2, ref Matrix32 arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_2_358(IntPtr method, IntPtr ptr, IntPtr arg1, int arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static object godot_icall_2_359(IntPtr method, IntPtr ptr, IntPtr arg1, int arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_3_360(IntPtr method, IntPtr ptr, IntPtr arg1, int arg2, object arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_2_361(IntPtr method, IntPtr ptr, IntPtr arg1, ref Matrix32 arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static object godot_icall_1_362(IntPtr method, IntPtr ptr, IntPtr arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_3_363(IntPtr method, IntPtr ptr, IntPtr arg1, IntPtr arg2, string arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_2_364(IntPtr method, IntPtr ptr, int arg1, bool arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_3_365(IntPtr method, IntPtr ptr, IntPtr arg1, int arg2, bool arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static bool godot_icall_2_366(IntPtr method, IntPtr ptr, IntPtr arg1, int arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_3_367(IntPtr method, IntPtr ptr, IntPtr arg1, ref Vector2 arg2, ref Vector2 arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_2_368(IntPtr method, IntPtr ptr, IntPtr arg1, ref Vector2 arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static object godot_icall_1_369(IntPtr method, IntPtr ptr, IntPtr arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_4_370(IntPtr method, IntPtr ptr, IntPtr arg1, IntPtr arg2, string arg3, object arg4);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static bool godot_icall_5_371(IntPtr method, IntPtr ptr, IntPtr arg1, ref Matrix32 arg2, ref Vector2 arg3, float arg4, IntPtr arg5);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_3_372(IntPtr method, IntPtr ptr, ref Vector2 arg1, IntPtr arg2, IntPtr arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_5_373(IntPtr method, IntPtr ptr, ref Vector2 arg1, ref Vector2 arg2, ref Vector2 arg3, IntPtr arg4, IntPtr arg5);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_4_374(IntPtr method, IntPtr ptr, ref Vector2 arg1, ref Vector2 arg2, IntPtr arg3, IntPtr arg4);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_1_375(IntPtr method, IntPtr ptr, object[] arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_2_376(IntPtr method, IntPtr ptr, ref Vector3 arg1, ref Vector3 arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static PhysicsDirectSpaceState godot_icall_0_377(IntPtr method, IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static Dictionary<object, object> godot_icall_5_378(IntPtr method, IntPtr ptr, ref Vector3 arg1, ref Vector3 arg2, object[] arg3, int arg4, int arg5);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static object[] godot_icall_2_379(IntPtr method, IntPtr ptr, IntPtr arg1, ref Vector3 arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static PhysicsDirectSpaceState godot_icall_1_380(IntPtr method, IntPtr ptr, IntPtr arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_3_381(IntPtr method, IntPtr ptr, IntPtr arg1, IntPtr arg2, ref Transform arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_3_382(IntPtr method, IntPtr ptr, IntPtr arg1, int arg2, ref Transform arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static object godot_icall_2_383(IntPtr method, IntPtr ptr, IntPtr arg1, int arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_2_384(IntPtr method, IntPtr ptr, IntPtr arg1, ref Transform arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static object godot_icall_1_385(IntPtr method, IntPtr ptr, IntPtr arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static int godot_icall_2_386(IntPtr method, IntPtr ptr, IntPtr arg1, int arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_3_387(IntPtr method, IntPtr ptr, IntPtr arg1, ref Vector3 arg2, ref Vector3 arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_2_388(IntPtr method, IntPtr ptr, IntPtr arg1, ref Vector3 arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_4_389(IntPtr method, IntPtr ptr, IntPtr arg1, ref Vector3 arg2, IntPtr arg3, ref Vector3 arg4);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static object godot_icall_1_390(IntPtr method, IntPtr ptr, IntPtr arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_4_391(IntPtr method, IntPtr ptr, IntPtr arg1, ref Transform arg2, IntPtr arg3, ref Transform arg4);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_4_392(IntPtr method, IntPtr ptr, IntPtr arg1, int arg2, int arg3, float arg4);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static float godot_icall_3_393(IntPtr method, IntPtr ptr, IntPtr arg1, int arg2, int arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_4_394(IntPtr method, IntPtr ptr, IntPtr arg1, int arg2, int arg3, bool arg4);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static bool godot_icall_3_395(IntPtr method, IntPtr ptr, IntPtr arg1, int arg2, int arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static object godot_icall_0_396(IntPtr method, IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_2_397(IntPtr method, IntPtr ptr, Vector2[] arg1, int[] arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static Vector2[] godot_icall_2_398(IntPtr method, IntPtr ptr, ref Vector2 arg1, ref Vector2 arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_4_399(IntPtr method, IntPtr ptr, IntPtr arg1, string arg2, int arg3, int arg4);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_3_400(IntPtr method, IntPtr ptr, string arg1, int arg2, int arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_3_401(IntPtr method, IntPtr ptr, string arg1, string arg2, int arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_3_402(IntPtr method, IntPtr ptr, IntPtr arg1, IntPtr arg2, int arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_2_403(IntPtr method, IntPtr ptr, IntPtr arg1, int arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static ShortCut godot_icall_1_404(IntPtr method, IntPtr ptr, int arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static Object godot_icall_3_405(IntPtr method, IntPtr ptr, string arg1, int arg2, int arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static string godot_icall_5_406(IntPtr method, IntPtr ptr, string arg1, string arg2, bool arg3, int arg4, int arg5);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static string godot_icall_1_407(IntPtr method, IntPtr ptr, object arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static Object godot_icall_1_408(IntPtr method, IntPtr ptr, bool arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_2_409(IntPtr method, IntPtr ptr, string arg1, IntPtr arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_3_410(IntPtr method, IntPtr ptr, int arg1, bool arg2, int arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_2_411(IntPtr method, IntPtr ptr, ref Vector2 arg1, ref Vector2 arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static bool godot_icall_3_412(IntPtr method, IntPtr ptr, ref Vector2 arg1, float arg2, IntPtr arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static Room godot_icall_0_413(IntPtr method, IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static Sample godot_icall_1_414(IntPtr method, IntPtr ptr, string arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static SampleLibrary godot_icall_0_415(IntPtr method, IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static int godot_icall_2_416(IntPtr method, IntPtr ptr, string arg1, bool arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_5_417(IntPtr method, IntPtr ptr, int arg1, int arg2, float arg3, float arg4, float arg5);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_2_418(IntPtr method, IntPtr ptr, int arg1, bool arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static PackedScene godot_icall_1_419(IntPtr method, IntPtr ptr, int arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static string[] godot_icall_1_420(IntPtr method, IntPtr ptr, int arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static object[] godot_icall_1_421(IntPtr method, IntPtr ptr, int arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_3_422(IntPtr method, IntPtr ptr, int arg1, string arg2, int arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_4_423(IntPtr method, IntPtr ptr, int arg1, string arg2, string arg3, object arg4);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static SceneTreeTimer godot_icall_1_424(IntPtr method, IntPtr ptr, float arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_3_425(IntPtr method, IntPtr ptr, int arg1, int arg2, ref Vector2 arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_4_426(IntPtr method, IntPtr ptr, int arg1, string arg2, string arg3, object[] arg4);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static int godot_icall_1_427(IntPtr method, IntPtr ptr, IntPtr arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_5_428(IntPtr method, IntPtr ptr, string arg1, string arg2, string arg3, int arg4, int arg5);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static Texture godot_icall_1_429(IntPtr method, IntPtr ptr, string arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_4_430(IntPtr method, IntPtr ptr, int arg1, int arg2, int arg3, object arg4);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_3_431(IntPtr method, IntPtr ptr, int arg1, int arg2, ref Vector3 arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static object godot_icall_2_432(IntPtr method, IntPtr ptr, int arg1, int arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_3_433(IntPtr method, IntPtr ptr, int arg1, int arg2, ref Color arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static object godot_icall_2_434(IntPtr method, IntPtr ptr, int arg1, int arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_3_435(IntPtr method, IntPtr ptr, int arg1, int arg2, ref Transform arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static object godot_icall_2_436(IntPtr method, IntPtr ptr, int arg1, int arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_3_437(IntPtr method, IntPtr ptr, int arg1, float arg2, float arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static float godot_icall_2_438(IntPtr method, IntPtr ptr, int arg1, float arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_3_439(IntPtr method, IntPtr ptr, int arg1, float arg2, int arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static int godot_icall_2_440(IntPtr method, IntPtr ptr, int arg1, float arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_3_441(IntPtr method, IntPtr ptr, int arg1, int arg2, string arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_3_442(IntPtr method, IntPtr ptr, int arg1, int arg2, IntPtr arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static Texture godot_icall_2_443(IntPtr method, IntPtr ptr, int arg1, int arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static CubeMap godot_icall_2_444(IntPtr method, IntPtr ptr, int arg1, int arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_4_445(IntPtr method, IntPtr ptr, int arg1, int arg2, Color[] arg3, float[] arg4);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static Color[] godot_icall_2_446(IntPtr method, IntPtr ptr, int arg1, int arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static float[] godot_icall_2_447(IntPtr method, IntPtr ptr, int arg1, int arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_3_448(IntPtr method, IntPtr ptr, int arg1, int arg2, Vector2[] arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static Vector2[] godot_icall_2_449(IntPtr method, IntPtr ptr, int arg1, int arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static int godot_icall_5_450(IntPtr method, IntPtr ptr, int arg1, int arg2, int arg3, int arg4, int arg5);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static bool godot_icall_5_451(IntPtr method, IntPtr ptr, int arg1, int arg2, int arg3, int arg4, int arg5);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static object godot_icall_2_452(IntPtr method, IntPtr ptr, int arg1, int arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static object godot_icall_1_453(IntPtr method, IntPtr ptr, string arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static bool godot_icall_3_454(IntPtr method, IntPtr ptr, ref Matrix32 arg1, IntPtr arg2, ref Matrix32 arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static bool godot_icall_5_455(IntPtr method, IntPtr ptr, ref Matrix32 arg1, ref Vector2 arg2, IntPtr arg3, ref Matrix32 arg4, ref Vector2 arg5);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static object godot_icall_3_456(IntPtr method, IntPtr ptr, ref Matrix32 arg1, IntPtr arg2, ref Matrix32 arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static object godot_icall_5_457(IntPtr method, IntPtr ptr, ref Matrix32 arg1, ref Vector2 arg2, IntPtr arg3, ref Matrix32 arg4, ref Vector2 arg5);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static object godot_icall_0_458(IntPtr method, IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static bool godot_icall_1_459(IntPtr method, IntPtr ptr, ref InputEvent arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static World godot_icall_0_460(IntPtr method, IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static SpatialGizmo godot_icall_0_461(IntPtr method, IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_2_462(IntPtr method, IntPtr ptr, ref Vector3 arg1, float arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_3_463(IntPtr method, IntPtr ptr, ref Vector3 arg1, ref Vector3 arg2, ref Vector3 arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static AudioStream godot_icall_0_464(IntPtr method, IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_3_465(IntPtr method, IntPtr ptr, string arg1, IntPtr arg2, int arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static Object godot_icall_2_466(IntPtr method, IntPtr ptr, string arg1, int arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_3_467(IntPtr method, IntPtr ptr, string arg1, int arg2, IntPtr arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static object[] godot_icall_1_468(IntPtr method, IntPtr ptr, byte[] arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static StreamPeerBuffer godot_icall_0_469(IntPtr method, IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static int godot_icall_1_470(IntPtr method, IntPtr ptr, IntPtr arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static int godot_icall_3_471(IntPtr method, IntPtr ptr, IntPtr arg1, bool arg2, string arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static bool godot_icall_2_472(IntPtr method, IntPtr ptr, ref Vector2 arg1, ref Rect2 arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_2_473(IntPtr method, IntPtr ptr, IntPtr arg1, ref Rect2 arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_6_474(IntPtr method, IntPtr ptr, Vector3[] arg1, Vector2[] arg2, Color[] arg3, Vector2[] arg4, Vector3[] arg5, object[] arg6);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static Mesh godot_icall_1_475(IntPtr method, IntPtr ptr, IntPtr arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static int godot_icall_3_476(IntPtr method, IntPtr ptr, int arg1, int arg2, string[] arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static Control godot_icall_1_477(IntPtr method, IntPtr ptr, int arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static Popup godot_icall_0_478(IntPtr method, IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static int[] godot_icall_4_479(IntPtr method, IntPtr ptr, string arg1, int arg2, int arg3, int arg4);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_4_480(IntPtr method, IntPtr ptr, string arg1, string arg2, ref Color arg3, bool arg4);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_4_481(IntPtr method, IntPtr ptr, IntPtr arg1, ref Vector2 arg2, ref Color arg3, bool arg4);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_5_482(IntPtr method, IntPtr ptr, IntPtr arg1, ref Rect2 arg2, bool arg3, ref Color arg4, bool arg5);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_5_483(IntPtr method, IntPtr ptr, IntPtr arg1, ref Rect2 arg2, ref Rect2 arg3, ref Color arg4, bool arg5);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static BitMap godot_icall_0_484(IntPtr method, IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_3_485(IntPtr method, IntPtr ptr, string arg1, string arg2, IntPtr arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_3_486(IntPtr method, IntPtr ptr, string arg1, string arg2, ref Color arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static TileSet godot_icall_0_487(IntPtr method, IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_6_488(IntPtr method, IntPtr ptr, int arg1, int arg2, int arg3, bool arg4, bool arg5, bool arg6);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_5_489(IntPtr method, IntPtr ptr, ref Vector2 arg1, int arg2, bool arg3, bool arg4, bool arg5);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static object godot_icall_2_490(IntPtr method, IntPtr ptr, ref Vector2 arg1, bool arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static CanvasItemMaterial godot_icall_1_491(IntPtr method, IntPtr ptr, int arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_2_492(IntPtr method, IntPtr ptr, int arg1, object[] arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static NavigationPolygon godot_icall_1_493(IntPtr method, IntPtr ptr, int arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static OccluderPolygon2D godot_icall_1_494(IntPtr method, IntPtr ptr, int arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static TreeItem godot_icall_1_495(IntPtr method, IntPtr ptr, IntPtr arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static TreeItem godot_icall_0_496(IntPtr method, IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static object godot_icall_2_497(IntPtr method, IntPtr ptr, IntPtr arg1, int arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static TreeItem godot_icall_1_498(IntPtr method, IntPtr ptr, ref Vector2 arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_5_499(IntPtr method, IntPtr ptr, int arg1, float arg2, float arg3, float arg4, bool arg5);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static Dictionary<object, object> godot_icall_1_500(IntPtr method, IntPtr ptr, int arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_3_501(IntPtr method, IntPtr ptr, int arg1, IntPtr arg2, string arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_3_502(IntPtr method, IntPtr ptr, int arg1, ref Color arg2, bool arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_4_503(IntPtr method, IntPtr ptr, int arg1, IntPtr arg2, int arg3, bool arg4);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static bool godot_icall_2_504(IntPtr method, IntPtr ptr, IntPtr arg1, string arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static bool godot_icall_8_505(IntPtr method, IntPtr ptr, IntPtr arg1, string arg2, object arg3, object arg4, float arg5, int arg6, int arg7, float arg8);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static bool godot_icall_8_506(IntPtr method, IntPtr ptr, IntPtr arg1, float arg2, string arg3, object arg4, object arg5, object arg6, object arg7, object arg8);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static bool godot_icall_9_507(IntPtr method, IntPtr ptr, IntPtr arg1, string arg2, object arg3, IntPtr arg4, string arg5, float arg6, int arg7, int arg8, float arg9);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static bool godot_icall_9_508(IntPtr method, IntPtr ptr, IntPtr arg1, string arg2, IntPtr arg3, string arg4, object arg5, float arg6, int arg7, int arg8, float arg9);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_3_509(IntPtr method, IntPtr ptr, IntPtr arg1, string arg2, object[] arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_3_510(IntPtr method, IntPtr ptr, IntPtr arg1, string arg2, object arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static VideoStream godot_icall_0_511(IntPtr method, IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_3_512(IntPtr method, IntPtr ptr, bool arg1, ref Vector2 arg2, ref Vector2 arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static RenderTargetTexture godot_icall_0_513(IntPtr method, IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static Camera godot_icall_0_514(IntPtr method, IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_4_515(IntPtr method, IntPtr ptr, string arg1, int arg2, IntPtr arg3, ref Vector2 arg4);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_3_516(IntPtr method, IntPtr ptr, string arg1, int arg2, ref Vector2 arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static object godot_icall_2_517(IntPtr method, IntPtr ptr, string arg1, int arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_4_518(IntPtr method, IntPtr ptr, string arg1, int arg2, int arg3, int arg4);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static bool godot_icall_4_519(IntPtr method, IntPtr ptr, string arg1, int arg2, int arg3, int arg4);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_5_520(IntPtr method, IntPtr ptr, string arg1, int arg2, int arg3, int arg4, int arg5);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static bool godot_icall_5_521(IntPtr method, IntPtr ptr, string arg1, int arg2, int arg3, int arg4, int arg5);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_3_522(IntPtr method, IntPtr ptr, string arg1, object arg2, bool arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_2_523(IntPtr method, IntPtr ptr, string arg1, Dictionary<object, object> arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static Dictionary<object, object> godot_icall_1_524(IntPtr method, IntPtr ptr, string arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_3_525(IntPtr method, IntPtr ptr, string arg1, int arg2, string arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_3_526(IntPtr method, IntPtr ptr, IntPtr arg1, string arg2, object[] arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static object[] godot_icall_1_527(IntPtr method, IntPtr ptr, object[] arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static VisualScript godot_icall_0_528(IntPtr method, IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_2_529(IntPtr method, IntPtr ptr, IntPtr arg1, int arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_3_530(IntPtr method, IntPtr ptr, IntPtr arg1, string arg2, object arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_5_531(IntPtr method, IntPtr ptr, IntPtr arg1, int arg2, object[] arg3, object[] arg4, bool arg5);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_4_532(IntPtr method, IntPtr ptr, IntPtr arg1, int arg2, IntPtr arg3, bool arg4);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_2_533(IntPtr method, IntPtr ptr, IntPtr arg1, ref AABB arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_3_534(IntPtr method, IntPtr ptr, IntPtr arg1, int arg2, ref Color arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static object godot_icall_2_535(IntPtr method, IntPtr ptr, IntPtr arg1, ref AABB arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static object godot_icall_2_536(IntPtr method, IntPtr ptr, IntPtr arg1, int arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static object godot_icall_1_537(IntPtr method, IntPtr ptr, IntPtr arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_3_538(IntPtr method, IntPtr ptr, IntPtr arg1, int arg2, ref Vector3 arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static object godot_icall_2_539(IntPtr method, IntPtr ptr, IntPtr arg1, int arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_3_540(IntPtr method, IntPtr ptr, IntPtr arg1, IntPtr arg2, bool arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_2_541(IntPtr method, IntPtr ptr, IntPtr arg1, Dictionary<object, object> arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static Dictionary<object, object> godot_icall_1_542(IntPtr method, IntPtr ptr, IntPtr arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_2_543(IntPtr method, IntPtr ptr, IntPtr arg1, Vector2[] arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static Vector2[] godot_icall_1_544(IntPtr method, IntPtr ptr, IntPtr arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_2_545(IntPtr method, IntPtr ptr, IntPtr arg1, ref Color arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static object godot_icall_1_546(IntPtr method, IntPtr ptr, IntPtr arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static object godot_icall_1_547(IntPtr method, IntPtr ptr, IntPtr arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static object[] godot_icall_2_548(IntPtr method, IntPtr ptr, ref AABB arg1, IntPtr arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static object[] godot_icall_3_549(IntPtr method, IntPtr ptr, ref Vector3 arg1, ref Vector3 arg2, IntPtr arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static object[] godot_icall_2_550(IntPtr method, IntPtr ptr, object[] arg1, IntPtr arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_3_551(IntPtr method, IntPtr ptr, IntPtr arg1, bool arg2, ref Rect2 arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static float godot_icall_2_552(IntPtr method, IntPtr ptr, IntPtr arg1, float arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_6_553(IntPtr method, IntPtr ptr, IntPtr arg1, ref Vector2 arg2, ref Vector2 arg3, ref Color arg4, float arg5, bool arg6);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_3_554(IntPtr method, IntPtr ptr, IntPtr arg1, ref Rect2 arg2, ref Color arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_6_555(IntPtr method, IntPtr ptr, IntPtr arg1, ref Rect2 arg2, IntPtr arg3, bool arg4, ref Color arg5, bool arg6);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_6_556(IntPtr method, IntPtr ptr, IntPtr arg1, ref Rect2 arg2, IntPtr arg3, ref Rect2 arg4, ref Color arg5, bool arg6);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_6_557(IntPtr method, IntPtr ptr, IntPtr arg1, ref Rect2 arg2, ref Rect2 arg3, IntPtr arg4, float[] arg5, ref Color arg6);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_4_558(IntPtr method, IntPtr ptr, IntPtr arg1, ref Vector2 arg2, float arg3, ref Color arg4);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_2_559(IntPtr method, IntPtr ptr, float arg1, int arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_4_560(IntPtr method, IntPtr ptr, IntPtr arg1, ref Vector2 arg2, int arg3, ref Rect2 arg4);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_2_561(IntPtr method, IntPtr ptr, bool arg1, int arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_2_562(IntPtr method, IntPtr ptr, ref Vector2 arg1, int arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_4_563(IntPtr method, IntPtr ptr, IntPtr arg1, IntPtr arg2, IntPtr arg3, IntPtr arg4);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_3_564(IntPtr method, IntPtr ptr, int arg1, int arg2, float arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_2_565(IntPtr method, IntPtr ptr, IntPtr arg1, object[] arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static TextureButton godot_icall_0_566(IntPtr method, IntPtr ptr);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static int godot_icall_2_567(IntPtr method, IntPtr ptr, string arg1, string arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static int godot_icall_3_568(IntPtr method, IntPtr ptr, string arg1, int arg2, byte[] arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static int godot_icall_3_569(IntPtr method, IntPtr ptr, string arg1, int arg2, string arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static byte[] godot_icall_1_570(IntPtr method, IntPtr ptr, int arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static object[] godot_icall_1_571(IntPtr method, IntPtr ptr, ref Vector3 arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static object[] godot_icall_4_572(IntPtr method, IntPtr ptr, float arg1, float arg2, int arg3, int arg4);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static object[] godot_icall_5_573(IntPtr method, IntPtr ptr, float arg1, float arg2, int arg3, int arg4, int arg5);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static float godot_icall_4_574(IntPtr method, IntPtr ptr, ref Vector2 arg1, ref Vector2 arg2, ref Vector2 arg3, float arg4);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_4_575(IntPtr method, IntPtr ptr, ref Vector2 arg1, ref Vector2 arg2, ref Vector2 arg3, ref Vector2 arg4);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static Vector2[] godot_icall_4_576(IntPtr method, IntPtr ptr, ref Vector2 arg1, ref Vector2 arg2, ref Vector2 arg3, ref Vector2 arg4);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static Vector3[] godot_icall_4_577(IntPtr method, IntPtr ptr, ref Vector3 arg1, ref Vector3 arg2, ref Vector3 arg3, ref Vector3 arg4);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static object godot_icall_3_578(IntPtr method, IntPtr ptr, ref Vector3 arg1, ref Vector3 arg2, ref Vector3 arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_5_579(IntPtr method, IntPtr ptr, ref Vector3 arg1, ref Vector3 arg2, ref Vector3 arg3, ref Vector3 arg4, ref Vector3 arg5);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static Vector3[] godot_icall_4_580(IntPtr method, IntPtr ptr, ref Vector3 arg1, ref Vector3 arg2, ref Vector3 arg3, float arg4);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static Vector3[] godot_icall_4_581(IntPtr method, IntPtr ptr, ref Vector3 arg1, ref Vector3 arg2, float arg3, float arg4);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static Vector3[] godot_icall_3_582(IntPtr method, IntPtr ptr, ref Vector3 arg1, ref Vector3 arg2, object[] arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static bool godot_icall_4_583(IntPtr method, IntPtr ptr, ref Vector2 arg1, ref Vector2 arg2, ref Vector2 arg3, ref Vector2 arg4);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static int[] godot_icall_1_584(IntPtr method, IntPtr ptr, Vector2[] arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static Dictionary<object, object> godot_icall_1_585(IntPtr method, IntPtr ptr, Vector2[] arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static string godot_icall_1_586(IntPtr method, IntPtr ptr, byte[] arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static byte[] godot_icall_1_587(IntPtr method, IntPtr ptr, string arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_4_588(IntPtr method, IntPtr ptr, ref Vector2 arg1, bool arg2, bool arg3, int arg4);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static int godot_icall_4_589(IntPtr method, IntPtr ptr, string arg1, string[] arg2, bool arg3, object[] arg4);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static int godot_icall_1_590(IntPtr method, IntPtr ptr, Dictionary<object, object> arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static int godot_icall_4_591(IntPtr method, IntPtr ptr, string arg1, float arg2, string arg3, string arg4);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static ResourceInteractiveLoader godot_icall_2_592(IntPtr method, IntPtr ptr, string arg1, string arg2);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static Resource godot_icall_3_593(IntPtr method, IntPtr ptr, string arg1, string arg2, bool arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static ResourceImportMetadata godot_icall_1_594(IntPtr method, IntPtr ptr, string arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static int godot_icall_3_595(IntPtr method, IntPtr ptr, string arg1, IntPtr arg2, int arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static string[] godot_icall_1_596(IntPtr method, IntPtr ptr, IntPtr arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static int godot_icall_4_597(IntPtr method, IntPtr ptr, IntPtr arg1, string arg2, object arg3, int arg4);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_3_598(IntPtr method, IntPtr ptr, IntPtr arg1, ref Rect2 arg2, ref Vector2 arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_3_599(IntPtr method, IntPtr ptr, IntPtr arg1, IntPtr arg2, ref Vector2 arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_3_600(IntPtr method, IntPtr ptr, IntPtr arg1, IntPtr arg2, ref Vector2 arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static object godot_icall_3_601(IntPtr method, IntPtr ptr, int arg1, int arg2, int arg3);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_1_602(IntPtr method, IntPtr ptr, ref Rect2 arg1);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static void godot_icall_4_603(IntPtr method, IntPtr ptr, int arg1, int arg2, ref Color arg3, int arg4);
        [MethodImpl(MethodImplOptions.InternalCall)]
        internal extern static IntPtr godot_icall_3_604(IntPtr method, IntPtr ptr, int arg1, int arg2, int arg3);
    }
}
