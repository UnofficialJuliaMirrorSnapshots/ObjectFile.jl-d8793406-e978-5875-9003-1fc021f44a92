module ELF

using StructIO

# Bring in ObjectFile definitions
using ObjectFile
import ObjectFile: DynamicLink, DynamicLinks, RPath, ObjectHandle, Section, Sections, SectionRef,
                   Segment, Segments, SegmentRef, StrTab, Symbols, SymtabEntry, SymbolRef,
                   getindex, length, iterate, lastindex, eltype, handle, header, path,
                   rpaths, canonical_rpaths, find_library, readmeta, seek, seekstart, skip,
                   iostream, position, read, readuntil, eof, endianness, is64bit, isrelocatable,
                   isexecutable, islibrary, isdynamic, mangle_section_name, mangle_symbol_name,
                   format_string, section_header_offset, section_header_size, section_header_type,
                   segment_header_offset, segment_header_size, segment_header_type, startaddr,
                   symtab_entry_offset, symtab_entry_size, symtab_entry_type, find_libraries,
                   findfirst, deref, section_name, section_size,
                   section_offset, section_address, section_number, segment_name, segment_offset,
                   segment_file_size, segment_memory_size, segment_address, strtab_lookup,
                   symbol_name, symbol_value, isundef, isglobal, islocal, isweak, symbol_number
# Load in imported C #define constants
include("constants.jl")

# Start to bring in concrete types, in the order they're needed
include("ELFInternal.jl")
include("ELFHeader.jl")
include("ELFHandle.jl")
include("ELFSection.jl")
include("ELFStrTab.jl")
include("ELFSegment.jl")
include("ELFSymbol.jl")
include("ELFDynEntry.jl")
include("ELFDynamicLink.jl")
include("ELFVersion.jl")

# Holdovers from ObjFileBase that I haven't cleaned up yet
#include("ELFRelocation.jl")
#include("ELFDebug.jl")

end # module ELF
