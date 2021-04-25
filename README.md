These are readings (beyond the text and Wikipedia articles) that I have
collected for the Operating Systems Principles course (UCLA CS111, HMC CS134):
 - most are articles that I have written ... these are available for use by 
   anyone who finds them useful.
 - there are several articles on security-related topics, written by Peter Reiher
   (UCLA).  Please contact him if you are interested in using them.
 - a few are (pubically posted) overview articles written by others, which I 
   have copied here only to give them stable URLs.

My more general articles:

 - general topics in operating systems
   - principles.html ... an introduction to (general) principles about
     software that we can learn from the study of Operating Systems.
   - interfaces.html ... an introduction to interface standardization and
     standards conformance.
   - stability.html ... a discussion of the importance of interface stability,
     emphasizing interface/implementation separation.
   - linkage.html ... an introduction to stack frames and linkage conventions.
   - objmods.html ... an introduction to object modules (where they come from
     and what they contain).
   - ObjectModulesLinkageEditingandLibraries.pdf ... a discussion of linkage
     editing and (what is involved in) program loading.
   - loadstress.html ... an introduction to goals and approaches to load and stress testing.
   - monitoring.html ... an introduction to the concept of *Health Monitoring*,
     and dealing with detected failures.

 - file systems
   - filetypes.html ... an introduction to different types of files (e.g.
     sequential, directories) and their attributes.
   - ipc.html ... a high level introduction to (user-level) inter-process
     communication mechanisms.
   - gc_defrag.html ... a discussion of garbage collection and defragmentation
   - BSD/bsd.html ... an overview of the (relatively original) 4BSD Fast File system,
     interesting for (head-motion optimizing) cylinder clusters, symbolic links, and
     long file names.
     - the FREEBSD sub-directory includes copies of (open source) header files for
       the basic file system data structures.
   - BSD/EXT3.html ... an overview of the (much newer) Linux EXT3 file system.
   - DOS/dos.html ... an overview of the (original and extended) DOS FAT file systems,
     interesting for its simplicity, and very different approaches to directory 
     structure and block allocation.
     - the OPENSOLARIS sub-directory includes a copy of an (open source) header
       file for the FDISK table (used by many operating systems) to partition disks.
   - MVS/mvs.html ... an overview of the (venerable) IBM System/360 file systems,
     interesting for their support of large contiguous extents.
   - VSAM/vsam.html ... an overview of the (only slightly less ancient) IBM VSAM
     file structure, interesting as a (simple but crude) illustration of how to
     indexed key-structured data.

 - distributed systems
   - distsystems.html ... an introduction to why we build distributed systems,
     and why they are hard to build.
   - authservers.html ... an introduction to authentication/authorization as a 
     service, using Kerberos Work-Tickets as an example.
   - clusterconcepts.html ... an introduction to fundamental concepts in clustered
     computing (membership, coupling, redundancy, heart-beats, split-brain, quorum,
     and fencing).
   - horizontal.html ... an introduction to the concept of horizontally scalable
     systems (and a lead-in to cloud computing).

 - Synchronization
   - avoidance.html ... a brief introduction to *Deadlock Avoidance* (as distinguished
     from *Deadlock Prevention*).
   - inversion.html ... a brief introduction to the problem of *Priority Inversion*,
     its detection, and dealing with it.
   - leases.html ... an introduction to the motivations for (and use of) *leases* (vs *locks*).

 - OS internals
   - dynamicmodules.html ... a discussion of dynamically loadable kernel
     modules, the steps involved, and their applicability to hot-plugging
     and other dynamically loaded services.
   - driverclasses.html ... a discussion of (UNIX) classes of device drivers
     (drivers that implement the same interfaces and abstractions).
   - multiprocessor.html ... an introduction to Symmetric Multi-Processor
     computers, problems (e.g. *cache coherence*) and how they affect
     operating systems design (scheduling, synchronization, I/O, memory allocation).
   - realtime.html ... an introduction to Real-Time systems, requirements, and scheduling.
   - usermodethreads.html ... a discussion of how *threads* can be implemented
     entirely in user-mode, and how this differs (in structure and capability) from
     kernel-mode implemetnations (I find this useful in a discussion of scheduling
     and context-switching).
   - workingsets.html ... a discussion of the performance risks associated with
     demand paging and the use of working sets to address them.

Peter Reiher's articles:
 - Reiher/Security_introduction.pdf ... an introduction to the basic goals of the 
   security mechanisms to be supported by an operating system, and the basic
   principles involved in defining and developing security enforcement
   mechanisms.
 - Reiher/authentication.pdf ... an introduction to the general concept of
   authentication, and a (very general) overview of the approaches to achieving it.
 - Reiher/access_control.pdf ... an introduction to the general concept of
   access control, and a discussion of the general approaches (Access Control
   Lists and Capabilities) of defining its rules.
 - Reiher/cryptography.pdf ... a general introduction to symmetric and Public Key
   encryption, and at-rest data encryption.
 - Reiher/Distributed_systems_security.pdf ... an introduction to the added
   complexities of authentication in distributed systems, specific discussions
   of the use of Public Key, password authentication, and SSL/TLS, and an overview
   of higher level applications (HTTPS and SSH).
 - Reiher/perf.pdf ... an introdction to performance measurement (metrics,
   choosing the right statistics, obtaining comparable results), the general 
   causes of performance problems, and common mistakes in performance measurement.

Other People's articles I have made copies of:
 - KERBEROS/kerberos.html ... an IEEE article by Neuman and Ts'o, introducing
   the Kerberos authentication service.
 - PUBKEY/pubkey.html ... a more detailed introduction to Public Key Encryption,
   signatures, and certificates from (long gone) Netscape.
