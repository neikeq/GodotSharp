%module GlobalTypemaps

%typemap(out) AcceptDialog "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) AcceptDialog* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) AnimatedSprite "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) AnimatedSprite* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) AnimatedSprite3D "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) AnimatedSprite3D* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(ctype, out="Animation*") Ref<Animation> "Animation*"
%typemap(out, null="NULL") Ref<Animation> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<Animation> "Animation.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<Animation> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<Animation> "Animation"
%typemap(csout, excode=SWIGEXCODE) Ref<Animation> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    Animation ret = InternalHelpers.UnmanagedGetManaged(cPtr) as Animation;$excode
    return ret;
}

%typemap(out) AnimationPlayer "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) AnimationPlayer* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) AnimationTreePlayer "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) AnimationTreePlayer* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) Area "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) Area* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) Area2D "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) Area2D* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(ctype, out="AtlasTexture*") Ref<AtlasTexture> "AtlasTexture*"
%typemap(out, null="NULL") Ref<AtlasTexture> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<AtlasTexture> "AtlasTexture.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<AtlasTexture> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<AtlasTexture> "AtlasTexture"
%typemap(csout, excode=SWIGEXCODE) Ref<AtlasTexture> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    AtlasTexture ret = InternalHelpers.UnmanagedGetManaged(cPtr) as AtlasTexture;$excode
    return ret;
}

%typemap(out) AudioServer "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) AudioServer* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) AudioServerSW "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) AudioServerSW* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(ctype, out="AudioStream*") Ref<AudioStream> "AudioStream*"
%typemap(out, null="NULL") Ref<AudioStream> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<AudioStream> "AudioStream.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<AudioStream> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<AudioStream> "AudioStream"
%typemap(csout, excode=SWIGEXCODE) Ref<AudioStream> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    AudioStream ret = InternalHelpers.UnmanagedGetManaged(cPtr) as AudioStream;$excode
    return ret;
}

%typemap(ctype, out="AudioStreamMPC*") Ref<AudioStreamMPC> "AudioStreamMPC*"
%typemap(out, null="NULL") Ref<AudioStreamMPC> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<AudioStreamMPC> "AudioStreamMPC.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<AudioStreamMPC> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<AudioStreamMPC> "AudioStreamMPC"
%typemap(csout, excode=SWIGEXCODE) Ref<AudioStreamMPC> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    AudioStreamMPC ret = InternalHelpers.UnmanagedGetManaged(cPtr) as AudioStreamMPC;$excode
    return ret;
}

%typemap(ctype, out="AudioStreamOGGVorbis*") Ref<AudioStreamOGGVorbis> "AudioStreamOGGVorbis*"
%typemap(out, null="NULL") Ref<AudioStreamOGGVorbis> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<AudioStreamOGGVorbis> "AudioStreamOGGVorbis.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<AudioStreamOGGVorbis> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<AudioStreamOGGVorbis> "AudioStreamOGGVorbis"
%typemap(csout, excode=SWIGEXCODE) Ref<AudioStreamOGGVorbis> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    AudioStreamOGGVorbis ret = InternalHelpers.UnmanagedGetManaged(cPtr) as AudioStreamOGGVorbis;$excode
    return ret;
}

%typemap(ctype, out="AudioStreamOpus*") Ref<AudioStreamOpus> "AudioStreamOpus*"
%typemap(out, null="NULL") Ref<AudioStreamOpus> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<AudioStreamOpus> "AudioStreamOpus.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<AudioStreamOpus> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<AudioStreamOpus> "AudioStreamOpus"
%typemap(csout, excode=SWIGEXCODE) Ref<AudioStreamOpus> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    AudioStreamOpus ret = InternalHelpers.UnmanagedGetManaged(cPtr) as AudioStreamOpus;$excode
    return ret;
}

%typemap(ctype, out="AudioStreamPlayback*") Ref<AudioStreamPlayback> "AudioStreamPlayback*"
%typemap(out, null="NULL") Ref<AudioStreamPlayback> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<AudioStreamPlayback> "AudioStreamPlayback.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<AudioStreamPlayback> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<AudioStreamPlayback> "AudioStreamPlayback"
%typemap(csout, excode=SWIGEXCODE) Ref<AudioStreamPlayback> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    AudioStreamPlayback ret = InternalHelpers.UnmanagedGetManaged(cPtr) as AudioStreamPlayback;$excode
    return ret;
}

%typemap(ctype, out="AudioStreamSpeex*") Ref<AudioStreamSpeex> "AudioStreamSpeex*"
%typemap(out, null="NULL") Ref<AudioStreamSpeex> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<AudioStreamSpeex> "AudioStreamSpeex.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<AudioStreamSpeex> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<AudioStreamSpeex> "AudioStreamSpeex"
%typemap(csout, excode=SWIGEXCODE) Ref<AudioStreamSpeex> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    AudioStreamSpeex ret = InternalHelpers.UnmanagedGetManaged(cPtr) as AudioStreamSpeex;$excode
    return ret;
}

%typemap(out) BackBufferCopy "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) BackBufferCopy* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(ctype, out="BakedLight*") Ref<BakedLight> "BakedLight*"
%typemap(out, null="NULL") Ref<BakedLight> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<BakedLight> "BakedLight.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<BakedLight> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<BakedLight> "BakedLight"
%typemap(csout, excode=SWIGEXCODE) Ref<BakedLight> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    BakedLight ret = InternalHelpers.UnmanagedGetManaged(cPtr) as BakedLight;$excode
    return ret;
}

%typemap(out) BakedLightInstance "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) BakedLightInstance* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) BakedLightSampler "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) BakedLightSampler* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) BaseButton "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) BaseButton* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(ctype, out="BitMap*") Ref<BitMap> "BitMap*"
%typemap(out, null="NULL") Ref<BitMap> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<BitMap> "BitMap.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<BitMap> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<BitMap> "BitMap"
%typemap(csout, excode=SWIGEXCODE) Ref<BitMap> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    BitMap ret = InternalHelpers.UnmanagedGetManaged(cPtr) as BitMap;$excode
    return ret;
}

%typemap(ctype, out="BitmapFont*") Ref<BitmapFont> "BitmapFont*"
%typemap(out, null="NULL") Ref<BitmapFont> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<BitmapFont> "BitmapFont.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<BitmapFont> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<BitmapFont> "BitmapFont"
%typemap(csout, excode=SWIGEXCODE) Ref<BitmapFont> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    BitmapFont ret = InternalHelpers.UnmanagedGetManaged(cPtr) as BitmapFont;$excode
    return ret;
}

%typemap(out) BoneAttachment "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) BoneAttachment* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) BoxContainer "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) BoxContainer* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(ctype, out="BoxShape*") Ref<BoxShape> "BoxShape*"
%typemap(out, null="NULL") Ref<BoxShape> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<BoxShape> "BoxShape.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<BoxShape> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<BoxShape> "BoxShape"
%typemap(csout, excode=SWIGEXCODE) Ref<BoxShape> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    BoxShape ret = InternalHelpers.UnmanagedGetManaged(cPtr) as BoxShape;$excode
    return ret;
}

%typemap(out) Button "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) Button* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) ButtonArray "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) ButtonArray* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) ButtonGroup "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) ButtonGroup* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(ctype, out="CSharpScript*") Ref<CSharpScript> "CSharpScript*"
%typemap(out, null="NULL") Ref<CSharpScript> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<CSharpScript> "CSharpScript.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<CSharpScript> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<CSharpScript> "CSharpScript"
%typemap(csout, excode=SWIGEXCODE) Ref<CSharpScript> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    CSharpScript ret = InternalHelpers.UnmanagedGetManaged(cPtr) as CSharpScript;$excode
    return ret;
}

%typemap(out) Camera "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) Camera* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) Camera2D "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) Camera2D* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) CanvasItem "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) CanvasItem* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(ctype, out="CanvasItemMaterial*") Ref<CanvasItemMaterial> "CanvasItemMaterial*"
%typemap(out, null="NULL") Ref<CanvasItemMaterial> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<CanvasItemMaterial> "CanvasItemMaterial.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<CanvasItemMaterial> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<CanvasItemMaterial> "CanvasItemMaterial"
%typemap(csout, excode=SWIGEXCODE) Ref<CanvasItemMaterial> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    CanvasItemMaterial ret = InternalHelpers.UnmanagedGetManaged(cPtr) as CanvasItemMaterial;$excode
    return ret;
}

%typemap(ctype, out="CanvasItemShader*") Ref<CanvasItemShader> "CanvasItemShader*"
%typemap(out, null="NULL") Ref<CanvasItemShader> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<CanvasItemShader> "CanvasItemShader.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<CanvasItemShader> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<CanvasItemShader> "CanvasItemShader"
%typemap(csout, excode=SWIGEXCODE) Ref<CanvasItemShader> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    CanvasItemShader ret = InternalHelpers.UnmanagedGetManaged(cPtr) as CanvasItemShader;$excode
    return ret;
}

%typemap(ctype, out="CanvasItemShaderGraph*") Ref<CanvasItemShaderGraph> "CanvasItemShaderGraph*"
%typemap(out, null="NULL") Ref<CanvasItemShaderGraph> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<CanvasItemShaderGraph> "CanvasItemShaderGraph.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<CanvasItemShaderGraph> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<CanvasItemShaderGraph> "CanvasItemShaderGraph"
%typemap(csout, excode=SWIGEXCODE) Ref<CanvasItemShaderGraph> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    CanvasItemShaderGraph ret = InternalHelpers.UnmanagedGetManaged(cPtr) as CanvasItemShaderGraph;$excode
    return ret;
}

%typemap(out) CanvasLayer "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) CanvasLayer* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) CanvasModulate "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) CanvasModulate* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(ctype, out="CapsuleShape*") Ref<CapsuleShape> "CapsuleShape*"
%typemap(out, null="NULL") Ref<CapsuleShape> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<CapsuleShape> "CapsuleShape.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<CapsuleShape> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<CapsuleShape> "CapsuleShape"
%typemap(csout, excode=SWIGEXCODE) Ref<CapsuleShape> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    CapsuleShape ret = InternalHelpers.UnmanagedGetManaged(cPtr) as CapsuleShape;$excode
    return ret;
}

%typemap(ctype, out="CapsuleShape2D*") Ref<CapsuleShape2D> "CapsuleShape2D*"
%typemap(out, null="NULL") Ref<CapsuleShape2D> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<CapsuleShape2D> "CapsuleShape2D.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<CapsuleShape2D> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<CapsuleShape2D> "CapsuleShape2D"
%typemap(csout, excode=SWIGEXCODE) Ref<CapsuleShape2D> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    CapsuleShape2D ret = InternalHelpers.UnmanagedGetManaged(cPtr) as CapsuleShape2D;$excode
    return ret;
}

%typemap(out) CenterContainer "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) CenterContainer* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) CheckBox "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) CheckBox* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) CheckButton "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) CheckButton* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(ctype, out="CircleShape2D*") Ref<CircleShape2D> "CircleShape2D*"
%typemap(out, null="NULL") Ref<CircleShape2D> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<CircleShape2D> "CircleShape2D.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<CircleShape2D> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<CircleShape2D> "CircleShape2D"
%typemap(csout, excode=SWIGEXCODE) Ref<CircleShape2D> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    CircleShape2D ret = InternalHelpers.UnmanagedGetManaged(cPtr) as CircleShape2D;$excode
    return ret;
}

%typemap(out) CollisionObject "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) CollisionObject* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) CollisionObject2D "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) CollisionObject2D* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) CollisionPolygon "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) CollisionPolygon* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) CollisionPolygon2D "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) CollisionPolygon2D* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) CollisionShape "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) CollisionShape* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) CollisionShape2D "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) CollisionShape2D* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) ColorPicker "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) ColorPicker* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) ColorPickerButton "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) ColorPickerButton* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(ctype, out="ColorRamp*") Ref<ColorRamp> "ColorRamp*"
%typemap(out, null="NULL") Ref<ColorRamp> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<ColorRamp> "ColorRamp.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<ColorRamp> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<ColorRamp> "ColorRamp"
%typemap(csout, excode=SWIGEXCODE) Ref<ColorRamp> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    ColorRamp ret = InternalHelpers.UnmanagedGetManaged(cPtr) as ColorRamp;$excode
    return ret;
}

%typemap(ctype, out="ConcavePolygonShape*") Ref<ConcavePolygonShape> "ConcavePolygonShape*"
%typemap(out, null="NULL") Ref<ConcavePolygonShape> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<ConcavePolygonShape> "ConcavePolygonShape.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<ConcavePolygonShape> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<ConcavePolygonShape> "ConcavePolygonShape"
%typemap(csout, excode=SWIGEXCODE) Ref<ConcavePolygonShape> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    ConcavePolygonShape ret = InternalHelpers.UnmanagedGetManaged(cPtr) as ConcavePolygonShape;$excode
    return ret;
}

%typemap(ctype, out="ConcavePolygonShape2D*") Ref<ConcavePolygonShape2D> "ConcavePolygonShape2D*"
%typemap(out, null="NULL") Ref<ConcavePolygonShape2D> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<ConcavePolygonShape2D> "ConcavePolygonShape2D.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<ConcavePolygonShape2D> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<ConcavePolygonShape2D> "ConcavePolygonShape2D"
%typemap(csout, excode=SWIGEXCODE) Ref<ConcavePolygonShape2D> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    ConcavePolygonShape2D ret = InternalHelpers.UnmanagedGetManaged(cPtr) as ConcavePolygonShape2D;$excode
    return ret;
}

%typemap(out) ConeTwistJoint "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) ConeTwistJoint* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(ctype, out="ConfigFile*") Ref<ConfigFile> "ConfigFile*"
%typemap(out, null="NULL") Ref<ConfigFile> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<ConfigFile> "ConfigFile.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<ConfigFile> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<ConfigFile> "ConfigFile"
%typemap(csout, excode=SWIGEXCODE) Ref<ConfigFile> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    ConfigFile ret = InternalHelpers.UnmanagedGetManaged(cPtr) as ConfigFile;$excode
    return ret;
}

%typemap(out) ConfirmationDialog "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) ConfirmationDialog* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) Container "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) Container* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) Control "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) Control* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(ctype, out="ConvexPolygonShape*") Ref<ConvexPolygonShape> "ConvexPolygonShape*"
%typemap(out, null="NULL") Ref<ConvexPolygonShape> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<ConvexPolygonShape> "ConvexPolygonShape.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<ConvexPolygonShape> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<ConvexPolygonShape> "ConvexPolygonShape"
%typemap(csout, excode=SWIGEXCODE) Ref<ConvexPolygonShape> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    ConvexPolygonShape ret = InternalHelpers.UnmanagedGetManaged(cPtr) as ConvexPolygonShape;$excode
    return ret;
}

%typemap(ctype, out="ConvexPolygonShape2D*") Ref<ConvexPolygonShape2D> "ConvexPolygonShape2D*"
%typemap(out, null="NULL") Ref<ConvexPolygonShape2D> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<ConvexPolygonShape2D> "ConvexPolygonShape2D.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<ConvexPolygonShape2D> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<ConvexPolygonShape2D> "ConvexPolygonShape2D"
%typemap(csout, excode=SWIGEXCODE) Ref<ConvexPolygonShape2D> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    ConvexPolygonShape2D ret = InternalHelpers.UnmanagedGetManaged(cPtr) as ConvexPolygonShape2D;$excode
    return ret;
}

%typemap(ctype, out="CubeMap*") Ref<CubeMap> "CubeMap*"
%typemap(out, null="NULL") Ref<CubeMap> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<CubeMap> "CubeMap.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<CubeMap> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<CubeMap> "CubeMap"
%typemap(csout, excode=SWIGEXCODE) Ref<CubeMap> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    CubeMap ret = InternalHelpers.UnmanagedGetManaged(cPtr) as CubeMap;$excode
    return ret;
}

%typemap(ctype, out="Curve2D*") Ref<Curve2D> "Curve2D*"
%typemap(out, null="NULL") Ref<Curve2D> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<Curve2D> "Curve2D.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<Curve2D> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<Curve2D> "Curve2D"
%typemap(csout, excode=SWIGEXCODE) Ref<Curve2D> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    Curve2D ret = InternalHelpers.UnmanagedGetManaged(cPtr) as Curve2D;$excode
    return ret;
}

%typemap(ctype, out="Curve3D*") Ref<Curve3D> "Curve3D*"
%typemap(out, null="NULL") Ref<Curve3D> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<Curve3D> "Curve3D.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<Curve3D> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<Curve3D> "Curve3D"
%typemap(csout, excode=SWIGEXCODE) Ref<Curve3D> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    Curve3D ret = InternalHelpers.UnmanagedGetManaged(cPtr) as Curve3D;$excode
    return ret;
}

%typemap(out) DampedSpringJoint2D "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) DampedSpringJoint2D* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) DirectionalLight "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) DirectionalLight* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(ctype, out="DynamicFont*") Ref<DynamicFont> "DynamicFont*"
%typemap(out, null="NULL") Ref<DynamicFont> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<DynamicFont> "DynamicFont.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<DynamicFont> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<DynamicFont> "DynamicFont"
%typemap(csout, excode=SWIGEXCODE) Ref<DynamicFont> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    DynamicFont ret = InternalHelpers.UnmanagedGetManaged(cPtr) as DynamicFont;$excode
    return ret;
}

%typemap(ctype, out="DynamicFontData*") Ref<DynamicFontData> "DynamicFontData*"
%typemap(out, null="NULL") Ref<DynamicFontData> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<DynamicFontData> "DynamicFontData.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<DynamicFontData> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<DynamicFontData> "DynamicFontData"
%typemap(csout, excode=SWIGEXCODE) Ref<DynamicFontData> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    DynamicFontData ret = InternalHelpers.UnmanagedGetManaged(cPtr) as DynamicFontData;$excode
    return ret;
}

%typemap(ctype, out="EditorExportPlugin*") Ref<EditorExportPlugin> "EditorExportPlugin*"
%typemap(out, null="NULL") Ref<EditorExportPlugin> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<EditorExportPlugin> "EditorExportPlugin.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<EditorExportPlugin> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<EditorExportPlugin> "EditorExportPlugin"
%typemap(csout, excode=SWIGEXCODE) Ref<EditorExportPlugin> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    EditorExportPlugin ret = InternalHelpers.UnmanagedGetManaged(cPtr) as EditorExportPlugin;$excode
    return ret;
}

%typemap(out) EditorFileDialog "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) EditorFileDialog* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(ctype, out="EditorImportPlugin*") Ref<EditorImportPlugin> "EditorImportPlugin*"
%typemap(out, null="NULL") Ref<EditorImportPlugin> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<EditorImportPlugin> "EditorImportPlugin.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<EditorImportPlugin> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<EditorImportPlugin> "EditorImportPlugin"
%typemap(csout, excode=SWIGEXCODE) Ref<EditorImportPlugin> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    EditorImportPlugin ret = InternalHelpers.UnmanagedGetManaged(cPtr) as EditorImportPlugin;$excode
    return ret;
}

%typemap(out) EditorPlugin "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) EditorPlugin* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(ctype, out="EditorScenePostImport*") Ref<EditorScenePostImport> "EditorScenePostImport*"
%typemap(out, null="NULL") Ref<EditorScenePostImport> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<EditorScenePostImport> "EditorScenePostImport.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<EditorScenePostImport> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<EditorScenePostImport> "EditorScenePostImport"
%typemap(csout, excode=SWIGEXCODE) Ref<EditorScenePostImport> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    EditorScenePostImport ret = InternalHelpers.UnmanagedGetManaged(cPtr) as EditorScenePostImport;$excode
    return ret;
}

%typemap(ctype, out="EditorScript*") Ref<EditorScript> "EditorScript*"
%typemap(out, null="NULL") Ref<EditorScript> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<EditorScript> "EditorScript.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<EditorScript> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<EditorScript> "EditorScript"
%typemap(csout, excode=SWIGEXCODE) Ref<EditorScript> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    EditorScript ret = InternalHelpers.UnmanagedGetManaged(cPtr) as EditorScript;$excode
    return ret;
}

%typemap(out) EditorSelection "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) EditorSelection* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(ctype, out="EditorSettings*") Ref<EditorSettings> "EditorSettings*"
%typemap(out, null="NULL") Ref<EditorSettings> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<EditorSettings> "EditorSettings.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<EditorSettings> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<EditorSettings> "EditorSettings"
%typemap(csout, excode=SWIGEXCODE) Ref<EditorSettings> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    EditorSettings ret = InternalHelpers.UnmanagedGetManaged(cPtr) as EditorSettings;$excode
    return ret;
}

%typemap(ctype, out="EditorSpatialGizmo*") Ref<EditorSpatialGizmo> "EditorSpatialGizmo*"
%typemap(out, null="NULL") Ref<EditorSpatialGizmo> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<EditorSpatialGizmo> "EditorSpatialGizmo.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<EditorSpatialGizmo> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<EditorSpatialGizmo> "EditorSpatialGizmo"
%typemap(csout, excode=SWIGEXCODE) Ref<EditorSpatialGizmo> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    EditorSpatialGizmo ret = InternalHelpers.UnmanagedGetManaged(cPtr) as EditorSpatialGizmo;$excode
    return ret;
}

%typemap(ctype, out="Environment*") Ref<Environment> "Environment*"
%typemap(out, null="NULL") Ref<Environment> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<Environment> "Environment.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<Environment> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<Environment> "Environment"
%typemap(csout, excode=SWIGEXCODE) Ref<Environment> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    Environment ret = InternalHelpers.UnmanagedGetManaged(cPtr) as Environment;$excode
    return ret;
}

%typemap(out) EventPlayer "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) EventPlayer* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(ctype, out="EventStream*") Ref<EventStream> "EventStream*"
%typemap(out, null="NULL") Ref<EventStream> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<EventStream> "EventStream.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<EventStream> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<EventStream> "EventStream"
%typemap(csout, excode=SWIGEXCODE) Ref<EventStream> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    EventStream ret = InternalHelpers.UnmanagedGetManaged(cPtr) as EventStream;$excode
    return ret;
}

%typemap(ctype, out="EventStreamChibi*") Ref<EventStreamChibi> "EventStreamChibi*"
%typemap(out, null="NULL") Ref<EventStreamChibi> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<EventStreamChibi> "EventStreamChibi.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<EventStreamChibi> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<EventStreamChibi> "EventStreamChibi"
%typemap(csout, excode=SWIGEXCODE) Ref<EventStreamChibi> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    EventStreamChibi ret = InternalHelpers.UnmanagedGetManaged(cPtr) as EventStreamChibi;$excode
    return ret;
}

%typemap(out) FileDialog "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) FileDialog* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(ctype, out="FixedMaterial*") Ref<FixedMaterial> "FixedMaterial*"
%typemap(out, null="NULL") Ref<FixedMaterial> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<FixedMaterial> "FixedMaterial.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<FixedMaterial> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<FixedMaterial> "FixedMaterial"
%typemap(csout, excode=SWIGEXCODE) Ref<FixedMaterial> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    FixedMaterial ret = InternalHelpers.UnmanagedGetManaged(cPtr) as FixedMaterial;$excode
    return ret;
}

%typemap(ctype, out="Font*") Ref<Font> "Font*"
%typemap(out, null="NULL") Ref<Font> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<Font> "Font.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<Font> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<Font> "Font"
%typemap(csout, excode=SWIGEXCODE) Ref<Font> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    Font ret = InternalHelpers.UnmanagedGetManaged(cPtr) as Font;$excode
    return ret;
}

%typemap(ctype, out="FuncRef*") Ref<FuncRef> "FuncRef*"
%typemap(out, null="NULL") Ref<FuncRef> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<FuncRef> "FuncRef.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<FuncRef> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<FuncRef> "FuncRef"
%typemap(csout, excode=SWIGEXCODE) Ref<FuncRef> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    FuncRef ret = InternalHelpers.UnmanagedGetManaged(cPtr) as FuncRef;$excode
    return ret;
}

%typemap(ctype, out="GDFunctionState*") Ref<GDFunctionState> "GDFunctionState*"
%typemap(out, null="NULL") Ref<GDFunctionState> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<GDFunctionState> "GDFunctionState.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<GDFunctionState> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<GDFunctionState> "GDFunctionState"
%typemap(csout, excode=SWIGEXCODE) Ref<GDFunctionState> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    GDFunctionState ret = InternalHelpers.UnmanagedGetManaged(cPtr) as GDFunctionState;$excode
    return ret;
}

%typemap(ctype, out="GDScript*") Ref<GDScript> "GDScript*"
%typemap(out, null="NULL") Ref<GDScript> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<GDScript> "GDScript.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<GDScript> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<GDScript> "GDScript"
%typemap(csout, excode=SWIGEXCODE) Ref<GDScript> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    GDScript ret = InternalHelpers.UnmanagedGetManaged(cPtr) as GDScript;$excode
    return ret;
}

%typemap(out) Generic6DOFJoint "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) Generic6DOFJoint* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) GeometryInstance "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) GeometryInstance* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) Globals "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) Globals* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) GraphEdit "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) GraphEdit* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) GraphNode "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) GraphNode* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) GridContainer "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) GridContainer* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) GridMap "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) GridMap* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) GrooveJoint2D "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) GrooveJoint2D* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) HBoxContainer "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) HBoxContainer* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) HButtonArray "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) HButtonArray* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) HScrollBar "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) HScrollBar* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) HSeparator "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) HSeparator* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) HSlider "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) HSlider* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) HSplitContainer "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) HSplitContainer* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(ctype, out="HTTPClient*") Ref<HTTPClient> "HTTPClient*"
%typemap(out, null="NULL") Ref<HTTPClient> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<HTTPClient> "HTTPClient.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<HTTPClient> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<HTTPClient> "HTTPClient"
%typemap(csout, excode=SWIGEXCODE) Ref<HTTPClient> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    HTTPClient ret = InternalHelpers.UnmanagedGetManaged(cPtr) as HTTPClient;$excode
    return ret;
}

%typemap(out) HTTPRequest "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) HTTPRequest* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) HingeJoint "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) HingeJoint* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) IP "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) IP* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) IP_Unix "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) IP_Unix* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(ctype, out="ImageTexture*") Ref<ImageTexture> "ImageTexture*"
%typemap(out, null="NULL") Ref<ImageTexture> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<ImageTexture> "ImageTexture.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<ImageTexture> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<ImageTexture> "ImageTexture"
%typemap(csout, excode=SWIGEXCODE) Ref<ImageTexture> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    ImageTexture ret = InternalHelpers.UnmanagedGetManaged(cPtr) as ImageTexture;$excode
    return ret;
}

%typemap(out) ImmediateGeometry "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) ImmediateGeometry* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) Input "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) Input* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) InputDefault "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) InputDefault* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) InputMap "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) InputMap* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) InstancePlaceholder "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) InstancePlaceholder* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) InterpolatedCamera "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) InterpolatedCamera* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) InverseKinematics "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) InverseKinematics* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) ItemList "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) ItemList* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) Joint "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) Joint* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) Joint2D "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) Joint2D* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) KinematicBody "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) KinematicBody* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) KinematicBody2D "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) KinematicBody2D* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) Label "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) Label* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(ctype, out="LargeTexture*") Ref<LargeTexture> "LargeTexture*"
%typemap(out, null="NULL") Ref<LargeTexture> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<LargeTexture> "LargeTexture.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<LargeTexture> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<LargeTexture> "LargeTexture"
%typemap(csout, excode=SWIGEXCODE) Ref<LargeTexture> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    LargeTexture ret = InternalHelpers.UnmanagedGetManaged(cPtr) as LargeTexture;$excode
    return ret;
}

%typemap(out) Light "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) Light* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) Light2D "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) Light2D* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) LightOccluder2D "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) LightOccluder2D* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) LineEdit "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) LineEdit* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(ctype, out="LineShape2D*") Ref<LineShape2D> "LineShape2D*"
%typemap(out, null="NULL") Ref<LineShape2D> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<LineShape2D> "LineShape2D.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<LineShape2D> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<LineShape2D> "LineShape2D"
%typemap(csout, excode=SWIGEXCODE) Ref<LineShape2D> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    LineShape2D ret = InternalHelpers.UnmanagedGetManaged(cPtr) as LineShape2D;$excode
    return ret;
}

%typemap(out) LinkButton "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) LinkButton* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) Listener "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) Listener* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) MainLoop "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) MainLoop* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) MarginContainer "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) MarginContainer* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(ctype, out="Material*") Ref<Material> "Material*"
%typemap(out, null="NULL") Ref<Material> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<Material> "Material.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<Material> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<Material> "Material"
%typemap(csout, excode=SWIGEXCODE) Ref<Material> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    Material ret = InternalHelpers.UnmanagedGetManaged(cPtr) as Material;$excode
    return ret;
}

%typemap(ctype, out="MaterialShader*") Ref<MaterialShader> "MaterialShader*"
%typemap(out, null="NULL") Ref<MaterialShader> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<MaterialShader> "MaterialShader.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<MaterialShader> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<MaterialShader> "MaterialShader"
%typemap(csout, excode=SWIGEXCODE) Ref<MaterialShader> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    MaterialShader ret = InternalHelpers.UnmanagedGetManaged(cPtr) as MaterialShader;$excode
    return ret;
}

%typemap(ctype, out="MaterialShaderGraph*") Ref<MaterialShaderGraph> "MaterialShaderGraph*"
%typemap(out, null="NULL") Ref<MaterialShaderGraph> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<MaterialShaderGraph> "MaterialShaderGraph.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<MaterialShaderGraph> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<MaterialShaderGraph> "MaterialShaderGraph"
%typemap(csout, excode=SWIGEXCODE) Ref<MaterialShaderGraph> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    MaterialShaderGraph ret = InternalHelpers.UnmanagedGetManaged(cPtr) as MaterialShaderGraph;$excode
    return ret;
}

%typemap(out) MenuButton "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) MenuButton* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(ctype, out="Mesh*") Ref<Mesh> "Mesh*"
%typemap(out, null="NULL") Ref<Mesh> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<Mesh> "Mesh.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<Mesh> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<Mesh> "Mesh"
%typemap(csout, excode=SWIGEXCODE) Ref<Mesh> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    Mesh ret = InternalHelpers.UnmanagedGetManaged(cPtr) as Mesh;$excode
    return ret;
}

%typemap(ctype, out="MeshDataTool*") Ref<MeshDataTool> "MeshDataTool*"
%typemap(out, null="NULL") Ref<MeshDataTool> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<MeshDataTool> "MeshDataTool.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<MeshDataTool> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<MeshDataTool> "MeshDataTool"
%typemap(csout, excode=SWIGEXCODE) Ref<MeshDataTool> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    MeshDataTool ret = InternalHelpers.UnmanagedGetManaged(cPtr) as MeshDataTool;$excode
    return ret;
}

%typemap(out) MeshInstance "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) MeshInstance* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(ctype, out="MeshLibrary*") Ref<MeshLibrary> "MeshLibrary*"
%typemap(out, null="NULL") Ref<MeshLibrary> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<MeshLibrary> "MeshLibrary.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<MeshLibrary> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<MeshLibrary> "MeshLibrary"
%typemap(csout, excode=SWIGEXCODE) Ref<MeshLibrary> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    MeshLibrary ret = InternalHelpers.UnmanagedGetManaged(cPtr) as MeshLibrary;$excode
    return ret;
}

%typemap(ctype, out="MultiMesh*") Ref<MultiMesh> "MultiMesh*"
%typemap(out, null="NULL") Ref<MultiMesh> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<MultiMesh> "MultiMesh.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<MultiMesh> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<MultiMesh> "MultiMesh"
%typemap(csout, excode=SWIGEXCODE) Ref<MultiMesh> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    MultiMesh ret = InternalHelpers.UnmanagedGetManaged(cPtr) as MultiMesh;$excode
    return ret;
}

%typemap(out) MultiMeshInstance "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) MultiMeshInstance* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) Navigation "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) Navigation* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) Navigation2D "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) Navigation2D* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(ctype, out="NavigationMesh*") Ref<NavigationMesh> "NavigationMesh*"
%typemap(out, null="NULL") Ref<NavigationMesh> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<NavigationMesh> "NavigationMesh.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<NavigationMesh> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<NavigationMesh> "NavigationMesh"
%typemap(csout, excode=SWIGEXCODE) Ref<NavigationMesh> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    NavigationMesh ret = InternalHelpers.UnmanagedGetManaged(cPtr) as NavigationMesh;$excode
    return ret;
}

%typemap(out) NavigationMeshInstance "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) NavigationMeshInstance* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(ctype, out="NavigationPolygon*") Ref<NavigationPolygon> "NavigationPolygon*"
%typemap(out, null="NULL") Ref<NavigationPolygon> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<NavigationPolygon> "NavigationPolygon.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<NavigationPolygon> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<NavigationPolygon> "NavigationPolygon"
%typemap(csout, excode=SWIGEXCODE) Ref<NavigationPolygon> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    NavigationPolygon ret = InternalHelpers.UnmanagedGetManaged(cPtr) as NavigationPolygon;$excode
    return ret;
}

%typemap(out) NavigationPolygonInstance "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) NavigationPolygonInstance* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) Node "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) Node* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) Node2D "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) Node2D* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) Object "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) Object* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(ctype, out="OccluderPolygon2D*") Ref<OccluderPolygon2D> "OccluderPolygon2D*"
%typemap(out, null="NULL") Ref<OccluderPolygon2D> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<OccluderPolygon2D> "OccluderPolygon2D.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<OccluderPolygon2D> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<OccluderPolygon2D> "OccluderPolygon2D"
%typemap(csout, excode=SWIGEXCODE) Ref<OccluderPolygon2D> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    OccluderPolygon2D ret = InternalHelpers.UnmanagedGetManaged(cPtr) as OccluderPolygon2D;$excode
    return ret;
}

%typemap(out) OmniLight "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) OmniLight* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) OptionButton "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) OptionButton* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(ctype, out="PCKPacker*") Ref<PCKPacker> "PCKPacker*"
%typemap(out, null="NULL") Ref<PCKPacker> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<PCKPacker> "PCKPacker.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<PCKPacker> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<PCKPacker> "PCKPacker"
%typemap(csout, excode=SWIGEXCODE) Ref<PCKPacker> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    PCKPacker ret = InternalHelpers.UnmanagedGetManaged(cPtr) as PCKPacker;$excode
    return ret;
}

%typemap(ctype, out="PHashTranslation*") Ref<PHashTranslation> "PHashTranslation*"
%typemap(out, null="NULL") Ref<PHashTranslation> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<PHashTranslation> "PHashTranslation.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<PHashTranslation> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<PHashTranslation> "PHashTranslation"
%typemap(csout, excode=SWIGEXCODE) Ref<PHashTranslation> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    PHashTranslation ret = InternalHelpers.UnmanagedGetManaged(cPtr) as PHashTranslation;$excode
    return ret;
}

%typemap(ctype, out="PackedDataContainer*") Ref<PackedDataContainer> "PackedDataContainer*"
%typemap(out, null="NULL") Ref<PackedDataContainer> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<PackedDataContainer> "PackedDataContainer.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<PackedDataContainer> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<PackedDataContainer> "PackedDataContainer"
%typemap(csout, excode=SWIGEXCODE) Ref<PackedDataContainer> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    PackedDataContainer ret = InternalHelpers.UnmanagedGetManaged(cPtr) as PackedDataContainer;$excode
    return ret;
}

%typemap(ctype, out="PackedDataContainerRef*") Ref<PackedDataContainerRef> "PackedDataContainerRef*"
%typemap(out, null="NULL") Ref<PackedDataContainerRef> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<PackedDataContainerRef> "PackedDataContainerRef.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<PackedDataContainerRef> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<PackedDataContainerRef> "PackedDataContainerRef"
%typemap(csout, excode=SWIGEXCODE) Ref<PackedDataContainerRef> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    PackedDataContainerRef ret = InternalHelpers.UnmanagedGetManaged(cPtr) as PackedDataContainerRef;$excode
    return ret;
}

%typemap(ctype, out="PackedScene*") Ref<PackedScene> "PackedScene*"
%typemap(out, null="NULL") Ref<PackedScene> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<PackedScene> "PackedScene.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<PackedScene> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<PackedScene> "PackedScene"
%typemap(csout, excode=SWIGEXCODE) Ref<PackedScene> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    PackedScene ret = InternalHelpers.UnmanagedGetManaged(cPtr) as PackedScene;$excode
    return ret;
}

%typemap(ctype, out="PacketPeer*") Ref<PacketPeer> "PacketPeer*"
%typemap(out, null="NULL") Ref<PacketPeer> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<PacketPeer> "PacketPeer.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<PacketPeer> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<PacketPeer> "PacketPeer"
%typemap(csout, excode=SWIGEXCODE) Ref<PacketPeer> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    PacketPeer ret = InternalHelpers.UnmanagedGetManaged(cPtr) as PacketPeer;$excode
    return ret;
}

%typemap(ctype, out="PacketPeerStream*") Ref<PacketPeerStream> "PacketPeerStream*"
%typemap(out, null="NULL") Ref<PacketPeerStream> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<PacketPeerStream> "PacketPeerStream.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<PacketPeerStream> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<PacketPeerStream> "PacketPeerStream"
%typemap(csout, excode=SWIGEXCODE) Ref<PacketPeerStream> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    PacketPeerStream ret = InternalHelpers.UnmanagedGetManaged(cPtr) as PacketPeerStream;$excode
    return ret;
}

%typemap(ctype, out="PacketPeerUDP*") Ref<PacketPeerUDP> "PacketPeerUDP*"
%typemap(out, null="NULL") Ref<PacketPeerUDP> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<PacketPeerUDP> "PacketPeerUDP.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<PacketPeerUDP> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<PacketPeerUDP> "PacketPeerUDP"
%typemap(csout, excode=SWIGEXCODE) Ref<PacketPeerUDP> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    PacketPeerUDP ret = InternalHelpers.UnmanagedGetManaged(cPtr) as PacketPeerUDP;$excode
    return ret;
}

%typemap(out) Panel "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) Panel* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) PanelContainer "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) PanelContainer* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) ParallaxBackground "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) ParallaxBackground* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) ParallaxLayer "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) ParallaxLayer* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) ParticleAttractor2D "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) ParticleAttractor2D* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) Particles "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) Particles* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) Particles2D "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) Particles2D* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) Patch9Frame "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) Patch9Frame* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) Path "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) Path* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) Path2D "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) Path2D* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) PathFollow "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) PathFollow* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) PathFollow2D "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) PathFollow2D* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) PathRemap "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) PathRemap* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) Performance "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) Performance* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) Physics2DDirectBodyState "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) Physics2DDirectBodyState* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) Physics2DDirectBodyStateSW "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) Physics2DDirectBodyStateSW* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) Physics2DDirectSpaceState "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) Physics2DDirectSpaceState* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) Physics2DServer "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) Physics2DServer* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) Physics2DServerSW "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) Physics2DServerSW* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(ctype, out="Physics2DShapeQueryParameters*") Ref<Physics2DShapeQueryParameters> "Physics2DShapeQueryParameters*"
%typemap(out, null="NULL") Ref<Physics2DShapeQueryParameters> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<Physics2DShapeQueryParameters> "Physics2DShapeQueryParameters.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<Physics2DShapeQueryParameters> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<Physics2DShapeQueryParameters> "Physics2DShapeQueryParameters"
%typemap(csout, excode=SWIGEXCODE) Ref<Physics2DShapeQueryParameters> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    Physics2DShapeQueryParameters ret = InternalHelpers.UnmanagedGetManaged(cPtr) as Physics2DShapeQueryParameters;$excode
    return ret;
}

%typemap(ctype, out="Physics2DShapeQueryResult*") Ref<Physics2DShapeQueryResult> "Physics2DShapeQueryResult*"
%typemap(out, null="NULL") Ref<Physics2DShapeQueryResult> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<Physics2DShapeQueryResult> "Physics2DShapeQueryResult.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<Physics2DShapeQueryResult> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<Physics2DShapeQueryResult> "Physics2DShapeQueryResult"
%typemap(csout, excode=SWIGEXCODE) Ref<Physics2DShapeQueryResult> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    Physics2DShapeQueryResult ret = InternalHelpers.UnmanagedGetManaged(cPtr) as Physics2DShapeQueryResult;$excode
    return ret;
}

%typemap(ctype, out="Physics2DTestMotionResult*") Ref<Physics2DTestMotionResult> "Physics2DTestMotionResult*"
%typemap(out, null="NULL") Ref<Physics2DTestMotionResult> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<Physics2DTestMotionResult> "Physics2DTestMotionResult.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<Physics2DTestMotionResult> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<Physics2DTestMotionResult> "Physics2DTestMotionResult"
%typemap(csout, excode=SWIGEXCODE) Ref<Physics2DTestMotionResult> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    Physics2DTestMotionResult ret = InternalHelpers.UnmanagedGetManaged(cPtr) as Physics2DTestMotionResult;$excode
    return ret;
}

%typemap(out) PhysicsBody "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) PhysicsBody* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) PhysicsBody2D "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) PhysicsBody2D* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) PhysicsDirectBodyState "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) PhysicsDirectBodyState* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) PhysicsDirectBodyStateSW "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) PhysicsDirectBodyStateSW* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) PhysicsDirectSpaceState "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) PhysicsDirectSpaceState* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) PhysicsServer "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) PhysicsServer* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) PhysicsServerSW "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) PhysicsServerSW* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(ctype, out="PhysicsShapeQueryParameters*") Ref<PhysicsShapeQueryParameters> "PhysicsShapeQueryParameters*"
%typemap(out, null="NULL") Ref<PhysicsShapeQueryParameters> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<PhysicsShapeQueryParameters> "PhysicsShapeQueryParameters.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<PhysicsShapeQueryParameters> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<PhysicsShapeQueryParameters> "PhysicsShapeQueryParameters"
%typemap(csout, excode=SWIGEXCODE) Ref<PhysicsShapeQueryParameters> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    PhysicsShapeQueryParameters ret = InternalHelpers.UnmanagedGetManaged(cPtr) as PhysicsShapeQueryParameters;$excode
    return ret;
}

%typemap(ctype, out="PhysicsShapeQueryResult*") Ref<PhysicsShapeQueryResult> "PhysicsShapeQueryResult*"
%typemap(out, null="NULL") Ref<PhysicsShapeQueryResult> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<PhysicsShapeQueryResult> "PhysicsShapeQueryResult.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<PhysicsShapeQueryResult> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<PhysicsShapeQueryResult> "PhysicsShapeQueryResult"
%typemap(csout, excode=SWIGEXCODE) Ref<PhysicsShapeQueryResult> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    PhysicsShapeQueryResult ret = InternalHelpers.UnmanagedGetManaged(cPtr) as PhysicsShapeQueryResult;$excode
    return ret;
}

%typemap(out) PinJoint "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) PinJoint* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) PinJoint2D "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) PinJoint2D* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(ctype, out="PlaneShape*") Ref<PlaneShape> "PlaneShape*"
%typemap(out, null="NULL") Ref<PlaneShape> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<PlaneShape> "PlaneShape.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<PlaneShape> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<PlaneShape> "PlaneShape"
%typemap(csout, excode=SWIGEXCODE) Ref<PlaneShape> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    PlaneShape ret = InternalHelpers.UnmanagedGetManaged(cPtr) as PlaneShape;$excode
    return ret;
}

%typemap(out) Polygon2D "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) Polygon2D* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(ctype, out="PolygonPathFinder*") Ref<PolygonPathFinder> "PolygonPathFinder*"
%typemap(out, null="NULL") Ref<PolygonPathFinder> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<PolygonPathFinder> "PolygonPathFinder.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<PolygonPathFinder> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<PolygonPathFinder> "PolygonPathFinder"
%typemap(csout, excode=SWIGEXCODE) Ref<PolygonPathFinder> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    PolygonPathFinder ret = InternalHelpers.UnmanagedGetManaged(cPtr) as PolygonPathFinder;$excode
    return ret;
}

%typemap(out) Popup "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) Popup* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) PopupDialog "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) PopupDialog* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) PopupMenu "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) PopupMenu* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) PopupPanel "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) PopupPanel* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) Portal "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) Portal* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) Position2D "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) Position2D* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) Position3D "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) Position3D* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) ProgressBar "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) ProgressBar* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) ProximityGroup "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) ProximityGroup* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) Quad "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) Quad* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) Range "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) Range* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) RayCast "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) RayCast* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) RayCast2D "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) RayCast2D* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(ctype, out="RayShape*") Ref<RayShape> "RayShape*"
%typemap(out, null="NULL") Ref<RayShape> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<RayShape> "RayShape.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<RayShape> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<RayShape> "RayShape"
%typemap(csout, excode=SWIGEXCODE) Ref<RayShape> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    RayShape ret = InternalHelpers.UnmanagedGetManaged(cPtr) as RayShape;$excode
    return ret;
}

%typemap(ctype, out="RayShape2D*") Ref<RayShape2D> "RayShape2D*"
%typemap(out, null="NULL") Ref<RayShape2D> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<RayShape2D> "RayShape2D.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<RayShape2D> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<RayShape2D> "RayShape2D"
%typemap(csout, excode=SWIGEXCODE) Ref<RayShape2D> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    RayShape2D ret = InternalHelpers.UnmanagedGetManaged(cPtr) as RayShape2D;$excode
    return ret;
}

%typemap(ctype, out="RectangleShape2D*") Ref<RectangleShape2D> "RectangleShape2D*"
%typemap(out, null="NULL") Ref<RectangleShape2D> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<RectangleShape2D> "RectangleShape2D.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<RectangleShape2D> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<RectangleShape2D> "RectangleShape2D"
%typemap(csout, excode=SWIGEXCODE) Ref<RectangleShape2D> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    RectangleShape2D ret = InternalHelpers.UnmanagedGetManaged(cPtr) as RectangleShape2D;$excode
    return ret;
}

%typemap(ctype, out="Reference*") Ref<Reference> "Reference*"
%typemap(out, null="NULL") Ref<Reference> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<Reference> "Reference.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<Reference> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<Reference> "Reference"
%typemap(csout, excode=SWIGEXCODE) Ref<Reference> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    Reference ret = InternalHelpers.UnmanagedGetManaged(cPtr) as Reference;$excode
    return ret;
}

%typemap(out) ReferenceFrame "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) ReferenceFrame* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(ctype, out="RegEx*") Ref<RegEx> "RegEx*"
%typemap(out, null="NULL") Ref<RegEx> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<RegEx> "RegEx.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<RegEx> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<RegEx> "RegEx"
%typemap(csout, excode=SWIGEXCODE) Ref<RegEx> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    RegEx ret = InternalHelpers.UnmanagedGetManaged(cPtr) as RegEx;$excode
    return ret;
}

%typemap(out) RemoteTransform2D "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) RemoteTransform2D* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(ctype, out="RenderTargetTexture*") Ref<RenderTargetTexture> "RenderTargetTexture*"
%typemap(out, null="NULL") Ref<RenderTargetTexture> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<RenderTargetTexture> "RenderTargetTexture.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<RenderTargetTexture> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<RenderTargetTexture> "RenderTargetTexture"
%typemap(csout, excode=SWIGEXCODE) Ref<RenderTargetTexture> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    RenderTargetTexture ret = InternalHelpers.UnmanagedGetManaged(cPtr) as RenderTargetTexture;$excode
    return ret;
}

%typemap(ctype, out="Resource*") Ref<Resource> "Resource*"
%typemap(out, null="NULL") Ref<Resource> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<Resource> "Resource.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<Resource> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<Resource> "Resource"
%typemap(csout, excode=SWIGEXCODE) Ref<Resource> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    Resource ret = InternalHelpers.UnmanagedGetManaged(cPtr) as Resource;$excode
    return ret;
}

%typemap(ctype, out="ResourceImportMetadata*") Ref<ResourceImportMetadata> "ResourceImportMetadata*"
%typemap(out, null="NULL") Ref<ResourceImportMetadata> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<ResourceImportMetadata> "ResourceImportMetadata.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<ResourceImportMetadata> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<ResourceImportMetadata> "ResourceImportMetadata"
%typemap(csout, excode=SWIGEXCODE) Ref<ResourceImportMetadata> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    ResourceImportMetadata ret = InternalHelpers.UnmanagedGetManaged(cPtr) as ResourceImportMetadata;$excode
    return ret;
}

%typemap(ctype, out="ResourceInteractiveLoader*") Ref<ResourceInteractiveLoader> "ResourceInteractiveLoader*"
%typemap(out, null="NULL") Ref<ResourceInteractiveLoader> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<ResourceInteractiveLoader> "ResourceInteractiveLoader.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<ResourceInteractiveLoader> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<ResourceInteractiveLoader> "ResourceInteractiveLoader"
%typemap(csout, excode=SWIGEXCODE) Ref<ResourceInteractiveLoader> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    ResourceInteractiveLoader ret = InternalHelpers.UnmanagedGetManaged(cPtr) as ResourceInteractiveLoader;$excode
    return ret;
}

%typemap(out) ResourcePreloader "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) ResourcePreloader* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) RichTextLabel "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) RichTextLabel* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) RigidBody "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) RigidBody* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) RigidBody2D "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) RigidBody2D* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) Room "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) Room* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(ctype, out="RoomBounds*") Ref<RoomBounds> "RoomBounds*"
%typemap(out, null="NULL") Ref<RoomBounds> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<RoomBounds> "RoomBounds.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<RoomBounds> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<RoomBounds> "RoomBounds"
%typemap(csout, excode=SWIGEXCODE) Ref<RoomBounds> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    RoomBounds ret = InternalHelpers.UnmanagedGetManaged(cPtr) as RoomBounds;$excode
    return ret;
}

%typemap(ctype, out="Sample*") Ref<Sample> "Sample*"
%typemap(out, null="NULL") Ref<Sample> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<Sample> "Sample.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<Sample> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<Sample> "Sample"
%typemap(csout, excode=SWIGEXCODE) Ref<Sample> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    Sample ret = InternalHelpers.UnmanagedGetManaged(cPtr) as Sample;$excode
    return ret;
}

%typemap(ctype, out="SampleLibrary*") Ref<SampleLibrary> "SampleLibrary*"
%typemap(out, null="NULL") Ref<SampleLibrary> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<SampleLibrary> "SampleLibrary.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<SampleLibrary> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<SampleLibrary> "SampleLibrary"
%typemap(csout, excode=SWIGEXCODE) Ref<SampleLibrary> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    SampleLibrary ret = InternalHelpers.UnmanagedGetManaged(cPtr) as SampleLibrary;$excode
    return ret;
}

%typemap(out) SamplePlayer "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) SamplePlayer* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) SamplePlayer2D "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) SamplePlayer2D* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(ctype, out="SceneState*") Ref<SceneState> "SceneState*"
%typemap(out, null="NULL") Ref<SceneState> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<SceneState> "SceneState.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<SceneState> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<SceneState> "SceneState"
%typemap(csout, excode=SWIGEXCODE) Ref<SceneState> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    SceneState ret = InternalHelpers.UnmanagedGetManaged(cPtr) as SceneState;$excode
    return ret;
}

%typemap(out) SceneTree "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) SceneTree* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(ctype, out="Script*") Ref<Script> "Script*"
%typemap(out, null="NULL") Ref<Script> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<Script> "Script.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<Script> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<Script> "Script"
%typemap(csout, excode=SWIGEXCODE) Ref<Script> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    Script ret = InternalHelpers.UnmanagedGetManaged(cPtr) as Script;$excode
    return ret;
}

%typemap(out) ScrollBar "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) ScrollBar* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) ScrollContainer "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) ScrollContainer* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(ctype, out="SegmentShape2D*") Ref<SegmentShape2D> "SegmentShape2D*"
%typemap(out, null="NULL") Ref<SegmentShape2D> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<SegmentShape2D> "SegmentShape2D.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<SegmentShape2D> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<SegmentShape2D> "SegmentShape2D"
%typemap(csout, excode=SWIGEXCODE) Ref<SegmentShape2D> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    SegmentShape2D ret = InternalHelpers.UnmanagedGetManaged(cPtr) as SegmentShape2D;$excode
    return ret;
}

%typemap(out) Separator "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) Separator* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(ctype, out="Shader*") Ref<Shader> "Shader*"
%typemap(out, null="NULL") Ref<Shader> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<Shader> "Shader.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<Shader> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<Shader> "Shader"
%typemap(csout, excode=SWIGEXCODE) Ref<Shader> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    Shader ret = InternalHelpers.UnmanagedGetManaged(cPtr) as Shader;$excode
    return ret;
}

%typemap(ctype, out="ShaderGraph*") Ref<ShaderGraph> "ShaderGraph*"
%typemap(out, null="NULL") Ref<ShaderGraph> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<ShaderGraph> "ShaderGraph.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<ShaderGraph> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<ShaderGraph> "ShaderGraph"
%typemap(csout, excode=SWIGEXCODE) Ref<ShaderGraph> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    ShaderGraph ret = InternalHelpers.UnmanagedGetManaged(cPtr) as ShaderGraph;$excode
    return ret;
}

%typemap(ctype, out="ShaderMaterial*") Ref<ShaderMaterial> "ShaderMaterial*"
%typemap(out, null="NULL") Ref<ShaderMaterial> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<ShaderMaterial> "ShaderMaterial.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<ShaderMaterial> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<ShaderMaterial> "ShaderMaterial"
%typemap(csout, excode=SWIGEXCODE) Ref<ShaderMaterial> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    ShaderMaterial ret = InternalHelpers.UnmanagedGetManaged(cPtr) as ShaderMaterial;$excode
    return ret;
}

%typemap(ctype, out="Shape*") Ref<Shape> "Shape*"
%typemap(out, null="NULL") Ref<Shape> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<Shape> "Shape.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<Shape> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<Shape> "Shape"
%typemap(csout, excode=SWIGEXCODE) Ref<Shape> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    Shape ret = InternalHelpers.UnmanagedGetManaged(cPtr) as Shape;$excode
    return ret;
}

%typemap(ctype, out="Shape2D*") Ref<Shape2D> "Shape2D*"
%typemap(out, null="NULL") Ref<Shape2D> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<Shape2D> "Shape2D.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<Shape2D> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<Shape2D> "Shape2D"
%typemap(csout, excode=SWIGEXCODE) Ref<Shape2D> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    Shape2D ret = InternalHelpers.UnmanagedGetManaged(cPtr) as Shape2D;$excode
    return ret;
}

%typemap(ctype, out="ShortCut*") Ref<ShortCut> "ShortCut*"
%typemap(out, null="NULL") Ref<ShortCut> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<ShortCut> "ShortCut.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<ShortCut> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<ShortCut> "ShortCut"
%typemap(csout, excode=SWIGEXCODE) Ref<ShortCut> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    ShortCut ret = InternalHelpers.UnmanagedGetManaged(cPtr) as ShortCut;$excode
    return ret;
}

%typemap(out) Skeleton "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) Skeleton* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) Slider "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) Slider* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) SliderJoint "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) SliderJoint* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) SoundPlayer2D "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) SoundPlayer2D* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) SoundRoomParams "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) SoundRoomParams* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) Spatial "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) Spatial* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(ctype, out="SpatialGizmo*") Ref<SpatialGizmo> "SpatialGizmo*"
%typemap(out, null="NULL") Ref<SpatialGizmo> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<SpatialGizmo> "SpatialGizmo.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<SpatialGizmo> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<SpatialGizmo> "SpatialGizmo"
%typemap(csout, excode=SWIGEXCODE) Ref<SpatialGizmo> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    SpatialGizmo ret = InternalHelpers.UnmanagedGetManaged(cPtr) as SpatialGizmo;$excode
    return ret;
}

%typemap(out) SpatialPlayer "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) SpatialPlayer* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) SpatialSamplePlayer "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) SpatialSamplePlayer* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) SpatialSound2DServer "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) SpatialSound2DServer* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) SpatialSound2DServerSW "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) SpatialSound2DServerSW* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) SpatialSoundServer "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) SpatialSoundServer* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) SpatialSoundServerSW "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) SpatialSoundServerSW* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) SpatialStreamPlayer "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) SpatialStreamPlayer* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(ctype, out="SphereShape*") Ref<SphereShape> "SphereShape*"
%typemap(out, null="NULL") Ref<SphereShape> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<SphereShape> "SphereShape.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<SphereShape> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<SphereShape> "SphereShape"
%typemap(csout, excode=SWIGEXCODE) Ref<SphereShape> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    SphereShape ret = InternalHelpers.UnmanagedGetManaged(cPtr) as SphereShape;$excode
    return ret;
}

%typemap(out) SpinBox "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) SpinBox* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) SplitContainer "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) SplitContainer* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) SpotLight "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) SpotLight* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) Sprite "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) Sprite* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) Sprite3D "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) Sprite3D* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) SpriteBase3D "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) SpriteBase3D* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(ctype, out="SpriteFrames*") Ref<SpriteFrames> "SpriteFrames*"
%typemap(out, null="NULL") Ref<SpriteFrames> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<SpriteFrames> "SpriteFrames.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<SpriteFrames> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<SpriteFrames> "SpriteFrames"
%typemap(csout, excode=SWIGEXCODE) Ref<SpriteFrames> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    SpriteFrames ret = InternalHelpers.UnmanagedGetManaged(cPtr) as SpriteFrames;$excode
    return ret;
}

%typemap(out) StaticBody "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) StaticBody* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) StaticBody2D "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) StaticBody2D* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(ctype, out="StreamPeer*") Ref<StreamPeer> "StreamPeer*"
%typemap(out, null="NULL") Ref<StreamPeer> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<StreamPeer> "StreamPeer.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<StreamPeer> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<StreamPeer> "StreamPeer"
%typemap(csout, excode=SWIGEXCODE) Ref<StreamPeer> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    StreamPeer ret = InternalHelpers.UnmanagedGetManaged(cPtr) as StreamPeer;$excode
    return ret;
}

%typemap(ctype, out="StreamPeerSSL*") Ref<StreamPeerSSL> "StreamPeerSSL*"
%typemap(out, null="NULL") Ref<StreamPeerSSL> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<StreamPeerSSL> "StreamPeerSSL.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<StreamPeerSSL> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<StreamPeerSSL> "StreamPeerSSL"
%typemap(csout, excode=SWIGEXCODE) Ref<StreamPeerSSL> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    StreamPeerSSL ret = InternalHelpers.UnmanagedGetManaged(cPtr) as StreamPeerSSL;$excode
    return ret;
}

%typemap(ctype, out="StreamPeerTCP*") Ref<StreamPeerTCP> "StreamPeerTCP*"
%typemap(out, null="NULL") Ref<StreamPeerTCP> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<StreamPeerTCP> "StreamPeerTCP.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<StreamPeerTCP> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<StreamPeerTCP> "StreamPeerTCP"
%typemap(csout, excode=SWIGEXCODE) Ref<StreamPeerTCP> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    StreamPeerTCP ret = InternalHelpers.UnmanagedGetManaged(cPtr) as StreamPeerTCP;$excode
    return ret;
}

%typemap(out) StreamPlayer "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) StreamPlayer* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(ctype, out="StyleBox*") Ref<StyleBox> "StyleBox*"
%typemap(out, null="NULL") Ref<StyleBox> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<StyleBox> "StyleBox.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<StyleBox> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<StyleBox> "StyleBox"
%typemap(csout, excode=SWIGEXCODE) Ref<StyleBox> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    StyleBox ret = InternalHelpers.UnmanagedGetManaged(cPtr) as StyleBox;$excode
    return ret;
}

%typemap(ctype, out="StyleBoxEmpty*") Ref<StyleBoxEmpty> "StyleBoxEmpty*"
%typemap(out, null="NULL") Ref<StyleBoxEmpty> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<StyleBoxEmpty> "StyleBoxEmpty.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<StyleBoxEmpty> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<StyleBoxEmpty> "StyleBoxEmpty"
%typemap(csout, excode=SWIGEXCODE) Ref<StyleBoxEmpty> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    StyleBoxEmpty ret = InternalHelpers.UnmanagedGetManaged(cPtr) as StyleBoxEmpty;$excode
    return ret;
}

%typemap(ctype, out="StyleBoxFlat*") Ref<StyleBoxFlat> "StyleBoxFlat*"
%typemap(out, null="NULL") Ref<StyleBoxFlat> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<StyleBoxFlat> "StyleBoxFlat.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<StyleBoxFlat> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<StyleBoxFlat> "StyleBoxFlat"
%typemap(csout, excode=SWIGEXCODE) Ref<StyleBoxFlat> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    StyleBoxFlat ret = InternalHelpers.UnmanagedGetManaged(cPtr) as StyleBoxFlat;$excode
    return ret;
}

%typemap(ctype, out="StyleBoxImageMask*") Ref<StyleBoxImageMask> "StyleBoxImageMask*"
%typemap(out, null="NULL") Ref<StyleBoxImageMask> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<StyleBoxImageMask> "StyleBoxImageMask.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<StyleBoxImageMask> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<StyleBoxImageMask> "StyleBoxImageMask"
%typemap(csout, excode=SWIGEXCODE) Ref<StyleBoxImageMask> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    StyleBoxImageMask ret = InternalHelpers.UnmanagedGetManaged(cPtr) as StyleBoxImageMask;$excode
    return ret;
}

%typemap(ctype, out="StyleBoxTexture*") Ref<StyleBoxTexture> "StyleBoxTexture*"
%typemap(out, null="NULL") Ref<StyleBoxTexture> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<StyleBoxTexture> "StyleBoxTexture.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<StyleBoxTexture> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<StyleBoxTexture> "StyleBoxTexture"
%typemap(csout, excode=SWIGEXCODE) Ref<StyleBoxTexture> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    StyleBoxTexture ret = InternalHelpers.UnmanagedGetManaged(cPtr) as StyleBoxTexture;$excode
    return ret;
}

%typemap(ctype, out="SurfaceTool*") Ref<SurfaceTool> "SurfaceTool*"
%typemap(out, null="NULL") Ref<SurfaceTool> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<SurfaceTool> "SurfaceTool.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<SurfaceTool> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<SurfaceTool> "SurfaceTool"
%typemap(csout, excode=SWIGEXCODE) Ref<SurfaceTool> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    SurfaceTool ret = InternalHelpers.UnmanagedGetManaged(cPtr) as SurfaceTool;$excode
    return ret;
}

%typemap(ctype, out="TCP_Server*") Ref<TCP_Server> "TCP_Server*"
%typemap(out, null="NULL") Ref<TCP_Server> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<TCP_Server> "TCP_Server.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<TCP_Server> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<TCP_Server> "TCP_Server"
%typemap(csout, excode=SWIGEXCODE) Ref<TCP_Server> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    TCP_Server ret = InternalHelpers.UnmanagedGetManaged(cPtr) as TCP_Server;$excode
    return ret;
}

%typemap(out) TabContainer "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) TabContainer* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) Tabs "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) Tabs* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) TestCube "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) TestCube* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) TextEdit "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) TextEdit* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(ctype, out="Texture*") Ref<Texture> "Texture*"
%typemap(out, null="NULL") Ref<Texture> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<Texture> "Texture.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<Texture> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<Texture> "Texture"
%typemap(csout, excode=SWIGEXCODE) Ref<Texture> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    Texture ret = InternalHelpers.UnmanagedGetManaged(cPtr) as Texture;$excode
    return ret;
}

%typemap(out) TextureButton "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) TextureButton* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) TextureFrame "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) TextureFrame* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) TextureProgress "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) TextureProgress* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(ctype, out="Theme*") Ref<Theme> "Theme*"
%typemap(out, null="NULL") Ref<Theme> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<Theme> "Theme.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<Theme> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<Theme> "Theme"
%typemap(csout, excode=SWIGEXCODE) Ref<Theme> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    Theme ret = InternalHelpers.UnmanagedGetManaged(cPtr) as Theme;$excode
    return ret;
}

%typemap(out) TileMap "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) TileMap* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(ctype, out="TileSet*") Ref<TileSet> "TileSet*"
%typemap(out, null="NULL") Ref<TileSet> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<TileSet> "TileSet.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<TileSet> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<TileSet> "TileSet"
%typemap(csout, excode=SWIGEXCODE) Ref<TileSet> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    TileSet ret = InternalHelpers.UnmanagedGetManaged(cPtr) as TileSet;$excode
    return ret;
}

%typemap(out) Timer "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) Timer* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) ToolButton "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) ToolButton* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) TouchScreenButton "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) TouchScreenButton* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(ctype, out="Translation*") Ref<Translation> "Translation*"
%typemap(out, null="NULL") Ref<Translation> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<Translation> "Translation.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<Translation> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<Translation> "Translation"
%typemap(csout, excode=SWIGEXCODE) Ref<Translation> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    Translation ret = InternalHelpers.UnmanagedGetManaged(cPtr) as Translation;$excode
    return ret;
}

%typemap(out) TranslationServer "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) TranslationServer* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) Tree "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) Tree* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) TreeItem "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) TreeItem* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) Tween "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) Tween* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) UndoRedo "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) UndoRedo* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) VBoxContainer "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) VBoxContainer* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) VButtonArray "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) VButtonArray* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) VScrollBar "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) VScrollBar* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) VSeparator "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) VSeparator* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) VSlider "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) VSlider* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) VSplitContainer "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) VSplitContainer* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) VehicleBody "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) VehicleBody* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) VehicleWheel "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) VehicleWheel* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) VideoPlayer "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) VideoPlayer* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(ctype, out="VideoStream*") Ref<VideoStream> "VideoStream*"
%typemap(out, null="NULL") Ref<VideoStream> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<VideoStream> "VideoStream.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<VideoStream> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<VideoStream> "VideoStream"
%typemap(csout, excode=SWIGEXCODE) Ref<VideoStream> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    VideoStream ret = InternalHelpers.UnmanagedGetManaged(cPtr) as VideoStream;$excode
    return ret;
}

%typemap(ctype, out="VideoStreamTheora*") Ref<VideoStreamTheora> "VideoStreamTheora*"
%typemap(out, null="NULL") Ref<VideoStreamTheora> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<VideoStreamTheora> "VideoStreamTheora.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<VideoStreamTheora> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<VideoStreamTheora> "VideoStreamTheora"
%typemap(csout, excode=SWIGEXCODE) Ref<VideoStreamTheora> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    VideoStreamTheora ret = InternalHelpers.UnmanagedGetManaged(cPtr) as VideoStreamTheora;$excode
    return ret;
}

%typemap(out) Viewport "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) Viewport* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) ViewportSprite "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) ViewportSprite* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) VisibilityEnabler "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) VisibilityEnabler* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) VisibilityEnabler2D "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) VisibilityEnabler2D* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) VisibilityNotifier "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) VisibilityNotifier* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) VisibilityNotifier2D "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) VisibilityNotifier2D* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) VisualInstance "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) VisualInstance* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) VisualServer "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) VisualServer* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(ctype, out="WeakRef*") Ref<WeakRef> "WeakRef*"
%typemap(out, null="NULL") Ref<WeakRef> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<WeakRef> "WeakRef.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<WeakRef> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<WeakRef> "WeakRef"
%typemap(csout, excode=SWIGEXCODE) Ref<WeakRef> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    WeakRef ret = InternalHelpers.UnmanagedGetManaged(cPtr) as WeakRef;$excode
    return ret;
}

%typemap(out) WindowDialog "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) WindowDialog* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(ctype, out="World*") Ref<World> "World*"
%typemap(out, null="NULL") Ref<World> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<World> "World.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<World> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<World> "World"
%typemap(csout, excode=SWIGEXCODE) Ref<World> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    World ret = InternalHelpers.UnmanagedGetManaged(cPtr) as World;$excode
    return ret;
}

%typemap(ctype, out="World2D*") Ref<World2D> "World2D*"
%typemap(out, null="NULL") Ref<World2D> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<World2D> "World2D.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<World2D> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<World2D> "World2D"
%typemap(csout, excode=SWIGEXCODE) Ref<World2D> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    World2D ret = InternalHelpers.UnmanagedGetManaged(cPtr) as World2D;$excode
    return ret;
}

%typemap(out) WorldEnvironment "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) WorldEnvironment* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(ctype, out="XMLParser*") Ref<XMLParser> "XMLParser*"
%typemap(out, null="NULL") Ref<XMLParser> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<XMLParser> "XMLParser.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<XMLParser> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<XMLParser> "XMLParser"
%typemap(csout, excode=SWIGEXCODE) Ref<XMLParser> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    XMLParser ret = InternalHelpers.UnmanagedGetManaged(cPtr) as XMLParser;$excode
    return ret;
}

%typemap(out) YSort "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) YSort* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(ctype, out="_Directory*") Ref<_Directory> "_Directory*"
%typemap(out, null="NULL") Ref<_Directory> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<_Directory> "_Directory.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<_Directory> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<_Directory> "_Directory"
%typemap(csout, excode=SWIGEXCODE) Ref<_Directory> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    _Directory ret = InternalHelpers.UnmanagedGetManaged(cPtr) as _Directory;$excode
    return ret;
}

%typemap(ctype, out="_File*") Ref<_File> "_File*"
%typemap(out, null="NULL") Ref<_File> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<_File> "_File.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<_File> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<_File> "_File"
%typemap(csout, excode=SWIGEXCODE) Ref<_File> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    _File ret = InternalHelpers.UnmanagedGetManaged(cPtr) as _File;$excode
    return ret;
}

%typemap(out) _Geometry "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) _Geometry* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(ctype, out="_Marshalls*") Ref<_Marshalls> "_Marshalls*"
%typemap(out, null="NULL") Ref<_Marshalls> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<_Marshalls> "_Marshalls.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<_Marshalls> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<_Marshalls> "_Marshalls"
%typemap(csout, excode=SWIGEXCODE) Ref<_Marshalls> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    _Marshalls ret = InternalHelpers.UnmanagedGetManaged(cPtr) as _Marshalls;$excode
    return ret;
}

%typemap(ctype, out="_Mutex*") Ref<_Mutex> "_Mutex*"
%typemap(out, null="NULL") Ref<_Mutex> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<_Mutex> "_Mutex.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<_Mutex> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<_Mutex> "_Mutex"
%typemap(csout, excode=SWIGEXCODE) Ref<_Mutex> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    _Mutex ret = InternalHelpers.UnmanagedGetManaged(cPtr) as _Mutex;$excode
    return ret;
}

%typemap(out) _OS "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) _OS* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) _ResourceLoader "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) _ResourceLoader* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(out) _ResourceSaver "$result = memnew($1_ltype((const $1_ltype &)$1));"
%typemap(csout, excode=SWIGEXCODE) _ResourceSaver* {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    $csclassname ret = InternalHelpers.UnmanagedGetManaged(cPtr) as $csclassname;$excode
    return ret;
  }

%typemap(ctype, out="_Semaphore*") Ref<_Semaphore> "_Semaphore*"
%typemap(out, null="NULL") Ref<_Semaphore> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<_Semaphore> "_Semaphore.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<_Semaphore> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<_Semaphore> "_Semaphore"
%typemap(csout, excode=SWIGEXCODE) Ref<_Semaphore> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    _Semaphore ret = InternalHelpers.UnmanagedGetManaged(cPtr) as _Semaphore;$excode
    return ret;
}

%typemap(ctype, out="_Thread*") Ref<_Thread> "_Thread*"
%typemap(out, null="NULL") Ref<_Thread> %{
  $result = $1.ptr();
  if ($result) $result->reference();
%}
%typemap(csin) Ref<_Thread> "_Thread.getCPtr($csinput)"
%typemap(imtype, out="global::System.IntPtr") Ref<_Thread> "global::System.Runtime.InteropServices.HandleRef"
%typemap(cstype) Ref<_Thread> "_Thread"
%typemap(csout, excode=SWIGEXCODE) Ref<_Thread> {
    global::System.IntPtr cPtr = $imcall;
    if (cPtr == global::System.IntPtr.Zero)
      return null;
    _Thread ret = InternalHelpers.UnmanagedGetManaged(cPtr) as _Thread;$excode
    return ret;
}

