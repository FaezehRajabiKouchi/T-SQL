﻿--------------------------------------------------------------------------------
--     This code was generated by a tool.
--
--     Changes to this file may cause incorrect behavior and will be lost if
--     the code is regenerated.
--------------------------------------------------------------------------------

CREATE FUNCTION [dbo].[CLRZarb] (@x [int], @y [money])
RETURNS [money]
AS EXTERNAL NAME [myCLRFunctions].[UserDefinedFunctions].[CLRZarb];

GO

CREATE FUNCTION [dbo].[MiladiToShamsi] (@sqlmiladi [datetime])
RETURNS [nvarchar](MAX)
AS EXTERNAL NAME [myCLRFunctions].[UserDefinedFunctions].[MiladiToShamsi];

GO

CREATE ASSEMBLY [myCLRFunctions] AUTHORIZATION [dbo]
FROM 0x4D5A90000300000004000000FFFF0000B800000000000000400000000000000000000000000000000000000000000000000000000000000000000000800000000E1FBA0E00B409CD21B8014CCD21546869732070726F6772616D2063616E6E6F742062652072756E20696E20444F53206D6F64652E0D0D0A2400000000000000504500004C01030029CD8C580000000000000000E00002210B010B00000800000006000000000000BE270000002000000040000000000010002000000002000004000000000000000600000000000000008000000002000000000000030060850000100000100000000010000010000000000000100000000000000000000000642700005700000000400000C002000000000000000000000000000000000000006000000C0000002C2600001C0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000200000080000000000000000000000082000004800000000000000000000002E74657874000000C4070000002000000008000000020000000000000000000000000000200000602E72737263000000C00200000040000000040000000A0000000000000000000000000000400000402E72656C6F6300000C0000000060000000020000000E00000000000000000000000000004000004200000000000000000000000000000000A0270000000000004800000002000500102100001C05000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001330020012000000010000110002280500000A03280600000A0A2B00062A000013300500890000000200001100730700000A0A02280800000A0B06076F0900000A0C06076F0A00000A0D06076F0B00000A13041B8D0E00000113071107161202280C00000AA21107177201000070A21107181203280C00000A181F306F0D00000AA21107197201000070A211071A1204280C00000A181F306F0D00000AA21107280E00000A13051105280F00000A13062B0011062A1E02281000000A2A00000042534A4201000100000000000C00000076342E302E33303331390000000005006C000000C0010000237E00002C0200003002000023537472696E6773000000005C04000008000000235553006404000010000000234755494400000074040000A800000023426C6F620000000000000002000001471502000900000000FA253300160000010000000F000000020000000300000003000000100000000500000002000000010000000200000000000A00010000000000060042003B000A006A0055000A00730055000A00840055000A008E0055000600D000BD001B00E400000006001301F30006003301F3000A007B0160010600BD01A8010600CD013B000600E201A80106000A023B00060011023B000000000001000000000001000100010010001D00000005000100010050200000000096007C000A00010070200000000096009A00130003000521000000008618A9001A00040000000100AF0000000200B10000000100B3003100A9001E004100A90024004900A9001A005100A9001A00110090012E0011009C0135005900A9001A002900D60143006900EB014A006900F3014A006900FC014A00790017025000710020025400710028025A002100900160000900A9001A002000230029002E000B0075002E0013007E002E001B0087004000230029003E006600048000000000000000000000000000000000510100000400000000000000000000000100320000000000040000000000000000000000010049000000000000000000003C4D6F64756C653E006D79434C5246756E6374696F6E732E646C6C0055736572446566696E656446756E6374696F6E73006D73636F726C69620053797374656D004F626A6563740053797374656D2E446174610053797374656D2E446174612E53716C54797065730053716C4D6F6E65790053716C496E74333200434C525A6172620053716C537472696E670053716C4461746554696D65004D696C616469546F5368616D7369002E63746F72007800790073716C6D696C6164690053797374656D2E446961676E6F73746963730044656275676761626C6541747472696275746500446562756767696E674D6F6465730053797374656D2E52756E74696D652E436F6D70696C6572536572766963657300436F6D70696C6174696F6E52656C61786174696F6E734174747269627574650052756E74696D65436F6D7061746962696C697479417474726962757465006D79434C5246756E6374696F6E73004D6963726F736F66742E53716C5365727665722E5365727665720053716C46756E6374696F6E417474726962757465006F705F496D706C69636974006F705F4D756C7469706C790053797374656D2E476C6F62616C697A6174696F6E005065727369616E43616C656E646172004461746554696D65006F705F4578706C696369740043616C656E6461720047657459656172004765744D6F6E7468004765744461794F664D6F6E746800537472696E6700496E74333200546F537472696E67005061644C65667400436F6E636174000000032F000000000030009E68DD67B64A8F85967042D9ABC60008B77A5C561934E0890800021109110D1109060001111111150320000105200101111D042001010804010000000600011109110D0800021109110911090407011109060001113111150520010811310320000E0520020E08030500010E1D0E05000111110E0E0708122D11310808080E11111D0E0801000701000000000801000800000000001E01000100540216577261704E6F6E457863657074696F6E5468726F77730100000000000029CD8C5800000000020000001C01000048260000480800005253445327F5653D5BD4BD4B801E4EEBC011A7EC01000000633A5C5453514C2053617475726461795C53657373696F6E2031315C6D79434C5246756E6374696F6E735C6D79434C5246756E6374696F6E735C6F626A5C44656275675C6D79434C5246756E6374696F6E732E7064620000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000008C2700000000000000000000AE270000002000000000000000000000000000000000000000000000A02700000000000000000000000000000000000000005F436F72446C6C4D61696E006D73636F7265652E646C6C0000000000FF250020001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100100000001800008000000000000000000000000000000100010000003000008000000000000000000000000000000100000000004800000058400000640200000000000000000000640234000000560053005F00560045005200530049004F004E005F0049004E0046004F0000000000BD04EFFE00000100000000000000000000000000000000003F000000000000000400000002000000000000000000000000000000440000000100560061007200460069006C00650049006E0066006F00000000002400040000005400720061006E0073006C006100740069006F006E00000000000000B004C4010000010053007400720069006E006700460069006C00650049006E0066006F000000A001000001003000300030003000300034006200300000002C0002000100460069006C0065004400650073006300720069007000740069006F006E000000000020000000300008000100460069006C006500560065007200730069006F006E000000000030002E0030002E0030002E003000000048001300010049006E007400650072006E0061006C004E0061006D00650000006D00790043004C005200460075006E006300740069006F006E0073002E0064006C006C00000000002800020001004C006500670061006C0043006F0070007900720069006700680074000000200000005000130001004F0072006900670069006E0061006C00460069006C0065006E0061006D00650000006D00790043004C005200460075006E006300740069006F006E0073002E0064006C006C0000000000340008000100500072006F006400750063007400560065007200730069006F006E00000030002E0030002E0030002E003000000038000800010041007300730065006D0062006C0079002000560065007200730069006F006E00000030002E0030002E0030002E0030000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000002000000C000000C03700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
WITH PERMISSION_SET = SAFE

GO

ALTER ASSEMBLY [myCLRFunctions]
ADD FILE FROM 0x4D6963726F736F667420432F432B2B204D534620372E30300D0A1A445300000000020000020000001B000000840000000000000017000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF380000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0BCA3101380000000010000000100000000000000F00FFFF04000000FFFF03000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000BCA3101380000000010000000100000000000001000FFFF04000000FFFF0300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000942E310129CD8C580100000027F5653D5BD4BD4B801E4EEBC011A7EC00000000000000000100000001000000000000000000000000000000DC51330100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000BCA310138000000001000000010000000000000FFFFFFFF04000000FFFF030000000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000BCA310138000000001000000010000000000000FFFFFFFF04000000FFFF030000000000FFFFFFFF00000000FFFFFFFF00000000FFFFFFFF000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000F862513FC607D311905300C04FA302A1C4454B99E9E6D211903F00C04FA302A10B9D865A1166D311BD2A0000F80849BD60A66E40CF64824CB6F042D48172A799100000000000000050F8BF833A08AAD52E251CB8EFE99EEC00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000F862513FC607D311905300C04FA302A1C4454B99E9E6D211903F00C04FA302A10B9D865A1166D311BD2A0000F80849BD60A66E40CF64824CB6F042D48172A79910000000000000001E32913F1B7BE9AF4B5858609905E8170000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000009B000000000000009B000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FEEFFEEF010000002401000000633A5C5453514C2053617475726461795C53657373696F6E2031315C6D79434C5246756E6374696F6E735C6D79434C5246756E6374696F6E735C4D696C616469546F5368616D73692E63730000633A5C7473716C2073617475726461795C73657373696F6E2031315C6D79636C7266756E6374696F6E735C6D79636C7266756E6374696F6E735C6D696C616469746F7368616D73692E637300633A5C5453514C2053617475726461795C53657373696F6E2031315C6D79434C5246756E6374696F6E735C6D79434C5246756E6374696F6E735C434C525A6172622E637300633A5C7473716C2073617475726461795C73657373696F6E2031315C6D79636C7266756E6374696F6E735C6D79636C7266756E6374696F6E735C636C727A6172622E637300070000004E0000004D000000000000009A000000DF000000000000000100000005000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001BE23001AC0000005BD79F6C8779D2010100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000200000004000000010000000C000000000000004E000000280000001BE23001C3DD639B58000000010000004D0000004E000000650000000000000000000000DF000000280000001BE23001E261B03C580000009A0000004D000000DF000000650000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000400000032002A11000000001C0100000000000012000000000000000000000001000006000000000100000000434C525A617262000000001600031104000000E80000001200000000000000010000000A0024115553797374656D00120024115553797374656D2E44617461000000001A0024115553797374656D2E446174612E53716C436C69656E7400001A0024115553797374656D2E446174612E53716C54797065730000001E002411554D6963726F736F66742E53716C5365727665722E536572766572001E00201100000000010000110000000000000400435324312430303030000000020006002E000404C93FEAC6B359D649BC250902BBABB460000000004D0044003200000004010000040000000C000000010005000200060036002A11000000000803000000000000890000000000000000000000020000061200000001000000004D696C616469546F5368616D7369001600031120010000C80200008900000012000000010000000A0024115553797374656D00120024115553797374656D2E44617461000000001A0024115553797374656D2E446174612E53716C436C69656E7400001A0024115553797374656D2E446174612E53716C54797065730000001E002411554D6963726F736F66742E53716C5365727665722E536572766572001E002011060000000200001100000000000004004353243124303030300000001E002011070000000200001100000000000004004353243024303030310000001600201100000000020000110000000000000000706300001A002011010000000200001100000000000000006D696C61646900001A0020110200000002000011000000000000000079656172000000001A002011030000000200001100000000000000006D6F6E74680000001600201104000000020000110000000000000000646179001A002011050000000200001100000000000000007368616D73690000020006003A000404C93FEAC6B359D649BC250902BBABB460000000004D0044003200000004020000040000000C00000001000500040224010C0000000100000602000600F20000003C000000000000000100010012000000000000000300000030000000000000000B000080010000000D000080100000000E000080050006000900140005000600F200000084000000120000000100010089000000080000000900000078000000000000000B000080010000000C000080070000000E0000800E0000001000008016000000110000801E0000001200008027000000140000807B0000001600008086000000170000800500060009005E0009002F00090027000900290009002C00090079000900170005000600F4000000100000009A0000000000000001000000000000001000000000000000180000003000000050000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFF1A092FF120000000140200005100000001000000190000000100000001000000010000003100000001000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000C00000018000000240000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001600251100000000040000000100434C525A6172620000001600291100000000040000000100303630303030303100001E002511000000002001000001004D696C616469546F5368616D73690000000016002911000000002001000001003036303030303032000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000010000000000000000000000000000000000000000000000000000000FFFFFFFF1A092FF10000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000FFFFFFFF77093101010000000C00008E0D004F000E000000600000003C0000002C000000A4000000000000000000000016000000190000000000EEC00000000000000000FFFF000000000000FFFFFFFF00000000FFFF0000000000000000000000000B000C03000000000000E800000002000000E8514401000000000000000055736572446566696E656446756E6374696F6E730037314141414545380000002DBA2EF10100000000000000120000000000000000000000000000000000000001000000120000008900000000000000000000000000000000000000020002000D01000000000100FFFFFFFF000000009B0000000802000000000000FFFFFFFF00000000FFFFFFFF01000200000002000000000045000000633A5C5453514C2053617475726461795C53657373696F6E2031315C6D79434C5246756E6374696F6E735C6D79434C5246756E6374696F6E735C434C525A6172622E637300633A5C5453514C2053617475726461795C53657373696F6E2031315C6D79434C5246756E6374696F6E735C6D79434C5246756E6374696F6E735C4D696C616469546F5368616D73692E637300000000FEEFFEEF010000000100000000010000000000000000000000FFFFFFFFFFFFFFFFFFFF0A00FFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000000000000000000000000000000000942E310129CD8C580100000027F5653D5BD4BD4B801E4EEBC011A7ECC90000002F4C696E6B496E666F002F6E616D6573002F7372632F686561646572626C6F636B002F7372632F66696C65732F633A5C7473716C2073617475726461795C73657373696F6E2031315C6D79636C7266756E6374696F6E735C6D79636C7266756E6374696F6E735C6D696C616469746F7368616D73692E6373002F7372632F66696C65732F633A5C7473716C2073617475726461795C73657373696F6E2031315C6D79636C7266756E6374696F6E735C6D79636C7266756E6374696F6E735C636C727A6172622E637300050000000A000000010000003E0000000000000011000000070000002200000008000000000000000500000079000000090000000A0000000600000000000000DC513301000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000F000000200000002D01000038000000DB010000380000000000000054010000AC00000058000000580000002800000008040000440200002C0000006800000003000000150000000600000014000000070000000B0000000C00000008000000090000000A0000000D0000000E0000000F0000001000000011000000130000001200000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
AS N'myCLRFunctions.pdb'

GO
