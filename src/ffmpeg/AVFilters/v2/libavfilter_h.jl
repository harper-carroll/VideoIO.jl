
import Base.zero


export
    AV_PERM_READ,
    AV_PERM_WRITE,
    AV_PERM_PRESERVE,
    AV_PERM_REUSE,
    AV_PERM_REUSE2,
    AV_PERM_NEG_LINESIZES,
    AVFilterContext,
    AVFilterLink,
    AVFilterPad,
    AVFilterBuffer,
    AVFilterBufferRefAudioProps,
    AVFilterBufferRefVideoProps,
    AVFilterBufferRef,
    AVFilterFormats,
    AVFilter,
    AVFilterGraph,
    AVFilterInOut


const AV_PERM_READ  =  0x01
const AV_PERM_WRITE  =  0x02
const AV_PERM_PRESERVE  =  0x04
const AV_PERM_REUSE  =  0x08
const AV_PERM_REUSE2  =  0x10
const AV_PERM_NEG_LINESIZES  =  0x20

const AVFilterContext = AVFilterContext
const AVFilterLink = AVFilterLink
const AVFilterPad = AVFilterPad

immutable AVFilterBuffer
    data::NTuple{8,Ptr{UInt8}}
    linesize::NTuple{8,Cint}
    refcount::UInt32
    priv::Ptr{Void}
    free::Ptr{Void}
    format::Cint
    w::Cint
    h::Cint
end

immutable AVFilterBufferRefAudioProps
    channel_layout::UInt64
    nb_samples::Cint
    size::Cint
    sample_rate::UInt32
    planar::Cint
end

immutable AVFilterBufferRefVideoProps
    w::Cint
    h::Cint
    pixel_aspect::AVRational
    interlaced::Cint
    top_field_first::Cint
    pict_type::AVPictureType
    key_frame::Cint
end

immutable AVFilterBufferRef
    buf::Ptr{AVFilterBuffer}
    data::NTuple{8,Ptr{UInt8}}
    linesize::NTuple{8,Cint}
    format::Cint
    pts::Int64
    pos::Int64
    perms::Cint
    _type::AVMediaType
    video::Ptr{AVFilterBufferRefVideoProps}
    audio::Ptr{AVFilterBufferRefAudioProps}
end

immutable AVFilterFormats
    format_count::UInt32
    formats::Ptr{Cint}
    refcount::UInt32
    refs::Ptr{Ptr{Ptr{AVFilterFormats}}}
end

immutable AVFilter
    name::Ptr{UInt8}
    priv_size::Cint
    init::Ptr{Void}
    uninit::Ptr{Void}
    query_formats::Ptr{Void}
    inputs::Ptr{AVFilterPad}
    outputs::Ptr{AVFilterPad}
    description::Ptr{UInt8}
end

immutable AVFilterGraph
    filter_count::UInt32
    filters::Ptr{Ptr{AVFilterContext}}
    scale_sws_opts::Ptr{UInt8}
end

immutable AVFilterInOut
    name::Ptr{UInt8}
    filter_ctx::Ptr{AVFilterContext}
    pad_idx::Cint
    next::Ptr{AVFilterInOut}
end
