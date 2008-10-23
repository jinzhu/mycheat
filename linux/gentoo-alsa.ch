= Gentoo Alsa:
== Soundcard Details
   lspci -v | grep -i audio
   00:14.2 Audio device: ATI Technologies Inc SB600 Azalia

== Kernel Options for ALSA [1]
   Configuration:
    http://www.gentoo.org/doc/en/alsa-guide.xml#doc_chap2_pre3

== Configuration:
   alsaconf

== Adding ALSA to the boot runlevel:

   rc-update add alsasound boot
     * alsasound added to runlevel boot
     * rc-update complete.
  
== Adding users to the audio group
   gpasswd -a <username> audio 
     Adding user <username> to group audio
  
== Start the service:
    /etc/init.d/alsasound start
     Starting alsamixer
  
== (Opens up a console program. Only required settings are shown)
    alsamixer
