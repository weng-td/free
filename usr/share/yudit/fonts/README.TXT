Put True Type  fonts here. All font names are case
sensitive. Please read the HOWTO-configure document
to see how to configure yudit. 
In yudit command area you need to type
howto configure
for this.

If you use yudit.properties that was shipped with yudit,
you don't need to do anything else than put the following
fonts here:
For Virtual Font TrueType:

  arial.ttf kochi-gothic.ttf gulim.ttf cyberbit.ttf
  caslr.ttf fogcaslr.ttf 

Unfortunately I can not re-distribute them, you need to hunt them
down.

The font file yudit.ttf comes with yudit. The original font was
contributed to yudit by Peter Soos <sp@osb.hu>. 

  ftp://ftp.osb.hu/pub/misc/fonts/local/latin-2/README.L2
  ftp://ftp.osb.hu/pub/misc/fonts/local/l2ttf004.zip

I moved this cp-1250 encoded font to Unicode encoding
and merged with rovstd.ttf rovas glyphs according to
the mapping in mytool/uni/ROVAS.TXT. 

The original rovstd.ttf tfont that is encoded in Hungarian 
Rovas Standard encoding. It was made by Hosszu Gabor 
<hosszu@Nimrud.eet.bme.hu>. It can be downloaded from:

   http://nimrud.eet.bme.hu/rovas/betuk/letoltes.htm

Please use rovas encdoder when using the original font.
rovstd.ttf:rovas:LR or rovstd.ttf:rovas
rovstdjb.ttf:rovas:RL

Update 2002-05-30
=================
Added yudit.hex that contains part of unifont.hex and rovas.hex
for old Hungarian. 
unifont.hex: http://people.debian.org/~dvdeug/
rovas.hex: http://www.yudit.org/download/fonts/
rovas.hex is under GPL and it is contributed to unifont. It was 
made by Gaspar Sinai Tokyo, 2002-05-30. 

Gaspar Sinai <gsinai@yudit.org>
2002-05-30

Archives
--------
Unifont:
Unifont is the GNU Unifont created by Roman Czyborra <roman@czyborra.com>
It is currently maintained by  David Starner <dvdeug@debian.org>, please
go to his site for updates.

What I have here  is version dvdeug-2 from
  http://dvdeug.dhis.org/unifont.html.

From yudit-2.5.beta14 this file can be rendered directly. You just need
to add it like a ttf font - specifying unifont.hex as fontname.

Gaspar Sinai <gsinai@yudit.org>
2002-04-26

From hosszu@Nimrud.eet.bme.hu  Thu Feb 28 08:48:14 2002
Delivered-To: yuditorg-gsinai@yudit.org
Received: from mail.yudit.org [206.245.164.55]
	by localhost with POP3 (fetchmail-5.9.6)
	for gsinai@localhost (single-drop); Thu, 28 Feb 2002 08:48:14 +0900 (JST)
Received: (qmail 10328 invoked from network); 27 Feb 2002 16:32:03 -0000
Received: from nimrud.eet.bme.hu (152.66.72.97)
  by mailserv2.iuinc.com with SMTP; 27 Feb 2002 16:32:03 -0000
Received: from localhost (hosszu@localhost)
	by Nimrud.eet.bme.hu (8.11.6/8.11.6) with ESMTP id g1RGW7a07656
	for <gsinai@yudit.org>; Wed, 27 Feb 2002 17:32:07 +0100
Date: Wed, 27 Feb 2002 17:32:07 +0100 (CET)
From: Hosszu Gabor <hosszu@Nimrud.eet.bme.hu>
To: Gaspar Sinai <gsinai@yudit.org>
Subject: =?ISO-8859-2?Q?Enged=E9ly?=
In-Reply-To: <Pine.LNX.4.44.0202261839070.8028-100000@suse.blue-edge-tech.com>
Message-ID: <Pine.LNX.4.44.0202271730420.7647-100000@Nimrud.eet.bme.hu>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=ISO-8859-2
Content-Transfer-Encoding: 8BIT
Status: RO
X-Status: 
X-Keywords:                 

Kedves Gáspár!

> helyrõl. A Bináris Windows és Linux verziókba szeretném beletenni
> a rovstd.ttf és a rovstdjb.ttf fontokat, az engedélyeddel.

Ezt tekintsük úgy, hogy ezzel megadtam. Csak egy érdekel, hogy a 
rovstd.ttf-beli rovás karakterek mind belekerüljenek, s persze úgy, 
ahogyan állnak.

Szia

Gábor

Honlap: http://nimrud.eet.bme.hu/hosszu

Update 2003-04-04
Date: Wed, 2 Apr 2003 10:15:02 +1000 (EST)
From: Ross Summerfield <ross@cicada.hyperquantum.com.au>
To: gsinai@yudit.org
Cc: Symbols Net <logos537@hotmail.com>
Subject: Re: Yudit font and keyboard stuff for Blissymbolics
Parts/Attachments:
   1 Shown     66 lines  Text (charset: ISO-8859-1)
   2          136 KB     Application
   3          5.7 KB     Application
   4   OK     171 lines  Text
   5   OK     374 lines  Text
----------------------------------------

    [ The following text is in the "iso-8859-1" character set. ]
    [ Your display is set for the "utf-8" character set.  ]
    [ Some characters may be displayed incorrectly. ]

Hi Gaspar,
Sorry about the delay in responding.
Symbols.net, about the font licence.  He has responded just over a week
ago (he, like myself, has been extremely busy himself  of recent) and
appears to be happy with GPL.
On  3 Mar, Gaspar Sinai wrote:
> Hi Ross,
>> I have been working on a Unicode font set for Blissymbolics based on the
>> Blissymbolics62 font set from www.symbols.net.  I have inserted the font
>> set in the Private Use area at 0xE000 to 0xE098.  You may be interested
>> in the modified Yudit.ttf, kmap and my files, which I have attached.
I have made some corrections to the font set after much experimentation.
I am still going through the testing, mostly to verify that all symbols
required are present (essentially I am typing in a translation
dictionary).  The updates are attached.
> 
> I have a few questions about Blissymbolics62:
> 
> o Can I rename the keymap to BlissSymbolics.kmap?
Certainly, although I would prefer if we stuck to the spelling of the
font author, Charles Bliss, which is Blissymbolics (i.e. loose the
additional 's').
> o How is this font licensed? If it can be distributed under the GNU
>   license I would like to ask you to do some work for me: please
>   document the PUA assignment. If there is an existing standard, please
>   try to make a map file.
As stated above, I believe George is happy for his stuff to be
considered GPL and as for my amendments, they would naturally follow
suit.
> 
>   Please refer to the exsisting ROVASIRAS.TXT document in
>      http://www.yudit.org/download/pua/
>   to see what I mean. There is also a postscript document in the same
>   directory.
Will do and have done.  As for standard names, there is none, but I have
done my best to try to be consistent with Charles Bliss' names for the
various fragments, if I can find references to them.  Please see
attached.
> 
>   Then, I can copy over the glyphs to the latest yudit.ttf
>   (the internal font name has changed), or if you volunteer for that too,
>   please take the attached font to do that.
> 
>   Of course if the font is not GNU licensed, forget this.
> 
> o If you have a gnu unifont version (size 16 bitmap font) I can include
>   that in yudit.hex too, as Yudit can render GNU Unifont directly.
No, unfortunately.  I have a fair bit of work in front of me before I
can get there yet (including learning how to make one).  I will get on
to that after I update my web page (maybe in the next week or two).
> 
> Thank you very much for the contribution!
No problems.  Thank you for all your efforts on your editor!

