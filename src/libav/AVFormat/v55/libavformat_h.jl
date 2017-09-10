
import Base.zero


export
    AVIO_SEEKABLE_NORMAL,
    AVSEEK_SIZE,
    AVSEEK_FORCE,
    AVIO_FLAG_READ,
    AVIO_FLAG_WRITE,
    AVIO_FLAG_READ_WRITE,
    AVIO_FLAG_NONBLOCK,
    AVIOInterruptCB,
    AVIOContext,
    AVPROBE_SCORE_EXTENSION,
    AVPROBE_SCORE_MAX,
    AVPROBE_PADDING_SIZE,
    AVFMT_NOFILE,
    AVFMT_NEEDNUMBER,
    AVFMT_SHOW_IDS,
    AVFMT_RAWPICTURE,
    AVFMT_GLOBALHEADER,
    AVFMT_NOTIMESTAMPS,
    AVFMT_GENERIC_INDEX,
    AVFMT_TS_DISCONT,
    AVFMT_VARIABLE_FPS,
    AVFMT_NODIMENSIONS,
    AVFMT_NOSTREAMS,
    AVFMT_NOBINSEARCH,
    AVFMT_NOGENSEARCH,
    AVFMT_NO_BYTE_SEEK,
    AVFMT_ALLOW_FLUSH,
    AVFMT_TS_NONSTRICT,
    AVFMT_TS_NEGATIVE,
    AVINDEX_KEYFRAME,
    AV_DISPOSITION_DEFAULT,
    AV_DISPOSITION_DUB,
    AV_DISPOSITION_ORIGINAL,
    AV_DISPOSITION_COMMENT,
    AV_DISPOSITION_LYRICS,
    AV_DISPOSITION_KARAOKE,
    AV_DISPOSITION_FORCED,
    AV_DISPOSITION_HEARING_IMPAIRED,
    AV_DISPOSITION_VISUAL_IMPAIRED,
    AV_DISPOSITION_CLEAN_EFFECTS,
    AV_DISPOSITION_ATTACHED_PIC,
    MAX_STD_TIMEBASES,
    MAX_PROBE_PACKETS,
    MAX_REORDER_DELAY,
    AV_PROGRAM_RUNNING,
    AVFMTCTX_NOHEADER,
    AVFMT_FLAG_GENPTS,
    AVFMT_FLAG_IGNIDX,
    AVFMT_FLAG_NONBLOCK,
    AVFMT_FLAG_IGNDTS,
    AVFMT_FLAG_NOFILLIN,
    AVFMT_FLAG_NOPARSE,
    AVFMT_FLAG_NOBUFFER,
    AVFMT_FLAG_CUSTOM_IO,
    AVFMT_FLAG_DISCARD_CORRUPT,
    AVFMT_FLAG_FLUSH_PACKETS,
    RAW_PACKET_BUFFER_SIZE,
    AVSEEK_FLAG_BACKWARD,
    AVSEEK_FLAG_BYTE,
    AVSEEK_FLAG_ANY,
    AVSEEK_FLAG_FRAME,
    AVCodecTag,
    AVInputFormat,
    AVOutputFormat,
    AVFrac,
    AVStreamParseType,
    AVSTREAM_PARSE_NONE,
    AVSTREAM_PARSE_FULL,
    AVSTREAM_PARSE_HEADERS,
    AVSTREAM_PARSE_TIMESTAMPS,
    AVSTREAM_PARSE_FULL_ONCE,
    AVPacketList,
    AVProbeData,
    AVIndexEntry,
    AVStream,
    AVProgram,
    AVChapter,
    AVFormatInternal,
    AVFormatContext


const AVIO_SEEKABLE_NORMAL = 0x0001
const AVSEEK_SIZE = 0x00010000
const AVSEEK_FORCE = 0x00020000
const AVIO_FLAG_READ = 1
const AVIO_FLAG_WRITE = 2
const AVIO_FLAG_READ_WRITE = AVIO_FLAG_READ | AVIO_FLAG_WRITE
const AVIO_FLAG_NONBLOCK = 8

immutable AVIOInterruptCB
    callback::Ptr{Void}
    opaque::Ptr{Void}
end

immutable AVIOContext
    av_class::Ptr{AVClass}
    buffer::Ptr{Cuchar}
    buffer_size::Cint
    buf_ptr::Ptr{Cuchar}
    buf_end::Ptr{Cuchar}
    opaque::Ptr{Void}
    read_packet::Ptr{Void}
    write_packet::Ptr{Void}
    seek::Ptr{Void}
    pos::Int64
    must_flush::Cint
    eof_reached::Cint
    write_flag::Cint
    max_packet_size::Cint
    checksum::Culong
    checksum_ptr::Ptr{Cuchar}
    update_checksum::Ptr{Void}
    error::Cint
    read_pause::Ptr{Void}
    read_seek::Ptr{Void}
    seekable::Cint
end

const AVPROBE_SCORE_EXTENSION = 50
const AVPROBE_SCORE_MAX = 100
const AVPROBE_PADDING_SIZE = 32
const AVFMT_NOFILE = 0x0001
const AVFMT_NEEDNUMBER = 0x0002
const AVFMT_SHOW_IDS = 0x0008
const AVFMT_RAWPICTURE = 0x0020
const AVFMT_GLOBALHEADER = 0x0040
const AVFMT_NOTIMESTAMPS = 0x0080
const AVFMT_GENERIC_INDEX = 0x0100
const AVFMT_TS_DISCONT = 0x0200
const AVFMT_VARIABLE_FPS = 0x0400
const AVFMT_NODIMENSIONS = 0x0800
const AVFMT_NOSTREAMS = 0x1000
const AVFMT_NOBINSEARCH = 0x2000
const AVFMT_NOGENSEARCH = 0x4000
const AVFMT_NO_BYTE_SEEK = 0x8000
const AVFMT_ALLOW_FLUSH = 0x00010000
const AVFMT_TS_NONSTRICT = 0x00020000
const AVFMT_TS_NEGATIVE = 0x00040000
const AVINDEX_KEYFRAME = 0x0001
const AV_DISPOSITION_DEFAULT = 0x0001
const AV_DISPOSITION_DUB = 0x0002
const AV_DISPOSITION_ORIGINAL = 0x0004
const AV_DISPOSITION_COMMENT = 0x0008
const AV_DISPOSITION_LYRICS = 0x0010
const AV_DISPOSITION_KARAOKE = 0x0020
const AV_DISPOSITION_FORCED = 0x0040
const AV_DISPOSITION_HEARING_IMPAIRED = 0x0080
const AV_DISPOSITION_VISUAL_IMPAIRED = 0x0100
const AV_DISPOSITION_CLEAN_EFFECTS = 0x0200
const AV_DISPOSITION_ATTACHED_PIC = 0x0400
const MAX_STD_TIMEBASES = 60 * 12 + 5
const MAX_PROBE_PACKETS = 2500
const MAX_REORDER_DELAY = 16
const AV_PROGRAM_RUNNING = 1
const AVFMTCTX_NOHEADER = 0x0001
const AVFMT_FLAG_GENPTS = 0x0001
const AVFMT_FLAG_IGNIDX = 0x0002
const AVFMT_FLAG_NONBLOCK = 0x0004
const AVFMT_FLAG_IGNDTS = 0x0008
const AVFMT_FLAG_NOFILLIN = 0x0010
const AVFMT_FLAG_NOPARSE = 0x0020
const AVFMT_FLAG_NOBUFFER = 0x0040
const AVFMT_FLAG_CUSTOM_IO = 0x0080
const AVFMT_FLAG_DISCARD_CORRUPT = 0x0100
const AVFMT_FLAG_FLUSH_PACKETS = 0x0200
const FF_FDEBUG_TS = 0x0001
const RAW_PACKET_BUFFER_SIZE = 2500000
const AVSEEK_FLAG_BACKWARD = 1
const AVSEEK_FLAG_BYTE = 2
const AVSEEK_FLAG_ANY = 4
const AVSEEK_FLAG_FRAME = 8

const AVCodecTag=Void

immutable AVInputFormat
    name::Ptr{UInt8}
    long_name::Ptr{UInt8}
    flags::Cint
    extensions::Ptr{UInt8}
    codec_tag::Ptr{Ptr{AVCodecTag}}
    priv_class::Ptr{AVClass}
    next::Ptr{AVInputFormat}
    raw_codec_id::Cint
    priv_data_size::Cint
    read_probe::Ptr{Void}
    read_header::Ptr{Void}
    read_packet::Ptr{Void}
    read_close::Ptr{Void}
    read_seek::Ptr{Void}
    read_timestamp::Ptr{Void}
    read_play::Ptr{Void}
    read_pause::Ptr{Void}
    read_seek2::Ptr{Void}
end

immutable AVOutputFormat
    name::Ptr{UInt8}
    long_name::Ptr{UInt8}
    mime_type::Ptr{UInt8}
    extensions::Ptr{UInt8}
    audio_codec::AVCodecID
    video_codec::AVCodecID
    subtitle_codec::AVCodecID
    flags::Cint
    codec_tag::Ptr{Ptr{AVCodecTag}}
    priv_class::Ptr{AVClass}
    next::Ptr{AVOutputFormat}
    priv_data_size::Cint
    write_header::Ptr{Void}
    write_packet::Ptr{Void}
    write_trailer::Ptr{Void}
    interleave_packet::Ptr{Void}
    query_codec::Ptr{Void}
end

immutable AVFrac
    val::Int64
    num::Int64
    den::Int64
end

# begin enum AVStreamParseType
const AVStreamParseType=UInt32
const AVSTREAM_PARSE_NONE = UInt32(0)
const AVSTREAM_PARSE_FULL = UInt32(1)
const AVSTREAM_PARSE_HEADERS = UInt32(2)
const AVSTREAM_PARSE_TIMESTAMPS = UInt32(3)
const AVSTREAM_PARSE_FULL_ONCE = UInt32(4)
# end enum AVStreamParseType

immutable AVPacketList
    pkt::AVPacket
    next::Ptr{AVPacketList}
end

immutable AVProbeData
    filename::Ptr{UInt8}
    buf::Ptr{Cuchar}
    buf_size::Cint
end

immutable AVIndexEntry
    pos::Int64
    timestamp::Int64
    flags::Cint
    size::Cint
    min_distance::Cint
end

immutable AVStream
    index::Cint
    id::Cint
    codec::Ptr{AVCodecContext}
    priv_data::Ptr{Void}
    pts::AVFrac
    time_base::AVRational
    start_time::Int64
    duration::Int64
    nb_frames::Int64
    disposition::Cint
    discard::AVDiscard
    sample_aspect_ratio::AVRational
    metadata::Ptr{AVDictionary}
    avg_frame_rate::AVRational
    attached_pic::AVPacket
    info::Ptr{Void}
    pts_wrap_bits::Cint
    do_not_use::Int64
    first_dts::Int64
    cur_dts::Int64
    last_IP_pts::Int64
    last_IP_duration::Cint
    probe_packets::Cint
    codec_info_nb_frames::Cint
    need_parsing::AVStreamParseType
    parser::Ptr{AVCodecParserContext}
    last_in_packet_buffer::Ptr{AVPacketList}
    probe_data::AVProbeData
    pts_buffer::NTuple{17,Int64}
    index_entries::Ptr{AVIndexEntry}
    nb_index_entries::Cint
    index_entries_allocated_size::UInt32
end

immutable AVProgram
    id::Cint
    flags::Cint
    discard::AVDiscard
    stream_index::Ptr{UInt32}
    nb_stream_indexes::UInt32
    metadata::Ptr{AVDictionary}
end

immutable AVChapter
    id::Cint
    time_base::AVRational
    start::Int64
    _end::Int64
    metadata::Ptr{AVDictionary}
end

const AVFormatInternal=Void

immutable AVFormatContext
    av_class::Ptr{AVClass}
    iformat::Ptr{AVInputFormat}
    oformat::Ptr{AVOutputFormat}
    priv_data::Ptr{Void}
    pb::Ptr{AVIOContext}
    ctx_flags::Cint
    nb_streams::UInt32
    streams::Ptr{Ptr{AVStream}}
    filename::NTuple{1024,UInt8}
    start_time::Int64
    duration::Int64
    bit_rate::Cint
    packet_size::UInt32
    max_delay::Cint
    flags::Cint
    probesize::UInt32
    max_analyze_duration::Cint
    key::Ptr{UInt8}
    keylen::Cint
    nb_programs::UInt32
    programs::Ptr{Ptr{AVProgram}}
    video_codec_id::AVCodecID
    audio_codec_id::AVCodecID
    subtitle_codec_id::AVCodecID
    max_index_size::UInt32
    max_picture_buffer::UInt32
    nb_chapters::UInt32
    chapters::Ptr{Ptr{AVChapter}}
    metadata::Ptr{AVDictionary}
    start_time_realtime::Int64
    fps_probe_size::Cint
    error_recognition::Cint
    interrupt_callback::AVIOInterruptCB
    debug::Cint
    max_interleave_delta::Int64
    packet_buffer::Ptr{AVPacketList}
    packet_buffer_end::Ptr{AVPacketList}
    data_offset::Int64
    raw_packet_buffer::Ptr{AVPacketList}
    raw_packet_buffer_end::Ptr{AVPacketList}
    parse_queue::Ptr{AVPacketList}
    parse_queue_end::Ptr{AVPacketList}
    raw_packet_buffer_remaining_size::Cint
    offset::Int64
    offset_timebase::AVRational
    internal::Ptr{AVFormatInternal}
end
