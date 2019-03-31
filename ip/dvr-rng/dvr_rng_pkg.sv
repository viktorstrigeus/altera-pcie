//
// Copyright (C) 2019 Chris McClelland
//
// Permission is hereby granted, free of charge, to any person obtaining a copy of this software
// and associated documentation files (the "Software"), to deal in the Software without
// restriction, including without limitation the rights to use, copy, modify, merge, publish,
// distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the
// Software is furnished to do so, subject to the following conditions:
//
// The above copyright  notice and this permission notice  shall be included in all copies or
// substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING
// BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
// NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,
// DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
//
package dvr_rng_pkg;
  // The first 256 values we expect to get from the 32-bit RNG
  typedef logic[31:0] uint32;
  localparam uint32[0:255] SEQ32 = {
    32'h290A560B, 32'h0B7D2CD4, 32'h05B928F0, 32'hCCB6D44B, 32'h1803D065, 32'hF16124AA, 32'h64CD0C05, 32'hC3E75564,
    32'h7A7102D3, 32'h41289BEC, 32'hF1278D11, 32'hF080C884, 32'h22D760F9, 32'h5B1F0A3B, 32'h98234C97, 32'hF51F3515,
    32'hA7504641, 32'h5332B7B9, 32'h01FE0F39, 32'h4DA430B2, 32'h03ECAB9A, 32'hA0E5A37B, 32'h326CD78D, 32'h627B0C81,
    32'h4D8B487E, 32'hDAFEB7D3, 32'h9537F2B1, 32'h7CC26887, 32'h4E1B9CE2, 32'hDDAD6239, 32'hFE82CFC3, 32'h9275C15D,
    32'h3C29596F, 32'hD40BDAB6, 32'h33EB3378, 32'hDC89AAE7, 32'hE1B794CA, 32'h266D6356, 32'hEA89D11A, 32'hB0315BA8,
    32'hF517C003, 32'h38F2CCAC, 32'h0D54DA96, 32'h957A5E4C, 32'hECF7DCE1, 32'h6F3DBA73, 32'h7C18334E, 32'h11092B94,
    32'h19E06F61, 32'h0CDBF35E, 32'h5CF07607, 32'hC9FA0BDE, 32'h7A0D1955, 32'h08195E45, 32'h356AA927, 32'h1DFCCD40,
    32'hE090E9BE, 32'hEEBACB60, 32'h27DBF945, 32'h65164895, 32'h68D338F9, 32'hDA25E5F5, 32'hDA6E6307, 32'hFD4E02CF,
    32'h86B99D1D, 32'hC24B988C, 32'h592D6D63, 32'hAED9D3C1, 32'h250CFB49, 32'hEDEA433C, 32'h53A7AA66, 32'hC449F54E,
    32'hDA28812E, 32'hB216842F, 32'h64872688, 32'h805A5DB1, 32'hB37B1E9C, 32'h022E10D5, 32'h40C0DB22, 32'hC6E6CF3B,
    32'hA2613DCC, 32'h6D10EA98, 32'h8F1B5822, 32'h143B425B, 32'h72E38408, 32'hAD6C2D1B, 32'hFB248516, 32'h469D7B8A,
    32'hFA59864A, 32'h96B6786C, 32'h603C336B, 32'h3D29B476, 32'hE05CD702, 32'hD7B391DB, 32'hB31E457D, 32'hC04C4F95,
    32'h4812BB03, 32'hB3C6C091, 32'hE071D530, 32'hCF54E340, 32'hEBB1C25D, 32'h47783DE5, 32'h249D6722, 32'h41EFF70B,
    32'hC703A73D, 32'h57ACCE0D, 32'h0DBD688B, 32'hD68E3AD1, 32'h54E76AED, 32'h4632502A, 32'h727BCC81, 32'h41CE66BA,
    32'hB1E6B492, 32'h22493BEE, 32'h331BC1AE, 32'hFFC12747, 32'hDCB7F643, 32'hADF6943F, 32'h28D045C1, 32'h101D176A,
    32'h59FAEFEC, 32'hC4B81B6F, 32'h9177F7BF, 32'hC19E425A, 32'h440109C9, 32'hBFFEB694, 32'hA8C3B512, 32'hF3570EEE,
    32'h8EDE0F36, 32'h08D955AE, 32'hD91D47CF, 32'h2654AAFC, 32'h7E4813A7, 32'h9A598103, 32'hC1C6A993, 32'h39230B39,
    32'h7A69D997, 32'h538153E2, 32'h43BD473C, 32'h09157DFA, 32'hF31441B6, 32'h64AC186A, 32'hF4874EAF, 32'h688AE1EE,
    32'h4011D511, 32'hC7CD2A3A, 32'h282DA490, 32'h1DE45519, 32'hA9E418ED, 32'h514D3F23, 32'h33499835, 32'hE16ECE08,
    32'hAF5C5EBE, 32'h78D314CA, 32'hD9A7BB0E, 32'hC6ADD976, 32'h6918167C, 32'h52F8F35D, 32'h8475A59F, 32'hDCB4DFB4,
    32'h81854D40, 32'h3CB3DEF3, 32'h26251452, 32'h3EF26DC1, 32'hF341F5CC, 32'h598905BE, 32'h3B1E3253, 32'h26CB91A5,
    32'hD8BD47DD, 32'hAC2F8597, 32'h64830F0F, 32'h246F2FCB, 32'h535858D2, 32'h642698D6, 32'h47B70CDD, 32'h505A0325,
    32'h7F144086, 32'h09D8A9CB, 32'h95BF8E81, 32'h5D422B38, 32'h94C3C70E, 32'hD8DC41BD, 32'h076F04B2, 32'hFFC1985C,
    32'h51987975, 32'h74B11937, 32'h8977E80F, 32'h3B3B1ABE, 32'h1D564E14, 32'h20703026, 32'hAFE1E3AC, 32'h068803D7,
    32'hCCAA5B86, 32'hAD8BA34B, 32'h07665F1F, 32'h45AE13EB, 32'h1778F9DE, 32'h459EB330, 32'h244D2629, 32'hE5B7CD17,
    32'h7515C065, 32'hA7AA3E70, 32'h4C198472, 32'hCE67CAE6, 32'h913D4049, 32'h3A9391DE, 32'hC33B28EB, 32'h72BAEB7D,
    32'h38722902, 32'hE824B77D, 32'hFD3B08DC, 32'h37221533, 32'hF0036E27, 32'h630F6E59, 32'h01E52FD3, 32'h5CD880CF,
    32'h654AEC70, 32'h5B4A7D87, 32'hE1B9BF62, 32'h5C8FF734, 32'hA1161EF7, 32'hFC013FAB, 32'h587EF187, 32'hCC22FC9A,
    32'hAB5741E0, 32'hE785ABEA, 32'h4750F994, 32'hC0A8F5AA, 32'hBF236B07, 32'h2CC5CBBB, 32'h5D25F65A, 32'h544D3774,
    32'h7E472F84, 32'h07B97692, 32'h85D9DBC0, 32'h6F5732A1, 32'h60649294, 32'h016D2A1D, 32'hAB3CAA13, 32'h1AE71E4F,
    32'hFFBFF145, 32'hD0DDE129, 32'h1E60CDB0, 32'h6C8B215C, 32'h4DA55761, 32'h4012046B, 32'h350A818C, 32'h22AF35FD,
    32'hE2C76585, 32'hD2E1C6AF, 32'h00D411FC, 32'h2B285259, 32'h6599C57B, 32'h4598E5DD, 32'hFA3483A8, 32'hF0D34DB9
  };

  // The first 256 values we expect to get from the 64-bit RNG
  typedef logic[63:0] uint64;
  localparam uint64[0:255] SEQ64 = {
    64'hD94228FF25158B13, 64'hAD38F30AE4F8C54A, 64'h77BA3F61586911F4, 64'h4CF92278482729BE,
    64'h61A664C8491D97C3, 64'h90DA4CD4CE831CBF, 64'h1001542C72C3C930, 64'hB77A2F931C78F8A1,
    64'h2B72932E0A3B310D, 64'h0EFAFB1F3161F041, 64'hA49A5186111BC5EB, 64'h7B01289EB7559846,
    64'h412010D731A850E6, 64'hCE505D4476A4BBC2, 64'h255C6F8F64181A72, 64'h4106B168D88FE2A6,
    64'h2DA1082A27832613, 64'h424C3AC1EB4CD45B, 64'hD64EEB4C6552A6DD, 64'hC8F96409FF4052D1,
    64'h3DE07495693B5EA4, 64'hBC5F7915732F2B4E, 64'h35CC759841708C06, 64'h2B65EA1677A531EB,
    64'h4D79171435AA5CB1, 64'hF177FB5554524585, 64'hD614AFD4A60BE358, 64'h7B244EC254DCA5B9,
    64'h93C4CE29354306A3, 64'h21CDEC72241C7797, 64'h3C585D262484FC1F, 64'h968BBCA34F2C0498,
    64'hE661CC6BD974E1A4, 64'h02AEAAAF2D24A297, 64'hE33051B643A39233, 64'hC820BF33049DD9BD,
    64'h83A502C4D53D26CB, 64'hD320FCB4A42C8FB2, 64'h4B7AF909812517AB, 64'h190E2DBD664D1B73,
    64'h2C0E4E4C4A11B781, 64'h52F2EA99CBCCD6C6, 64'h1A2C7B36F2EC4DBB, 64'hF6B31DDCCC2FF9C8,
    64'h0D7C3296FBD1EDE4, 64'hCAC1D236DBC82FC7, 64'h2A80805BDFF5DF48, 64'h62201026E2494676,
    64'hAAE7393E1B1B50D3, 64'hD18C78905B4DF249, 64'h05B2F0DE0851CA89, 64'h8ADAE0696882C330,
    64'h64CB114259D7A6C4, 64'hE653D567138D3C5C, 64'h0E8E34BBF784E24E, 64'hFBACEF941235A04E,
    64'hCDE7F1D36813C884, 64'h5A145715FDE5ED34, 64'hDB2EA22CBC48E860, 64'hC285404C08A315B4,
    64'h5AB98965A5C1351E, 64'hAB974168D5B5CE58, 64'h0D9C219511F51721, 64'hB9064E7B74EA6E0E,
    64'h8E6FD25B1B4CF1FA, 64'hF4582D79164C07BE, 64'h89116814957C03A4, 64'h3B3528AF82A53988,
    64'h995E4CBC6BB19ABA, 64'h16A19A85731307E2, 64'h2CC688E2EF514C57, 64'hE7C88316B4925B3C,
    64'h7C02DA3BEC8EEFE4, 64'h5047023150BE3EC7, 64'h06D221B04AA2E6DB, 64'h6552A07A9DC852DF,
    64'h0303AD2253B06105, 64'h27669D34DE655C34, 64'h9116B1F1B5E959DA, 64'h76FDAE8F5403ADD0,
    64'h55A0CE277A9ECCC6, 64'h1C084125D428F559, 64'h3810DE62FB6C12B7, 64'hC8623EB3E8FDB871,
    64'hA74A74BF06A0C227, 64'hA8845A5BDF8CB553, 64'h892112F19B44329F, 64'hFFFE0429E5CEA3BD,
    64'hD477185D43F4D118, 64'h72F6DC96DD0D9E5B, 64'h90712C351B0FB882, 64'hB6A62F50F14FFA5F,
    64'hEB0AFD3273322A3A, 64'h084891D5BFE0EFDE, 64'hE088BEBA9AB5651E, 64'h792EAE2F8EEC1465,
    64'hFC91C8EA561DCB80, 64'hD65FF836878A3EC7, 64'h49084A4B29F766DA, 64'h94D7642C563FED95,
    64'hA350C4E842F6CFC7, 64'hDCB730F3D621F33E, 64'h5F08647984F7A75C, 64'h740EA638F9504DE4,
    64'h91BBA563254107D6, 64'h009E183C64BEE28E, 64'hAAC27F9ABDE224F9, 64'hE4F73C1077841BB5,
    64'h0D58D6079E72CD48, 64'h84CAF7D4E4993791, 64'h6DF0121C4E668BE1, 64'h1F925F2F5B920C87,
    64'h7D4A1D02DF5DE71A, 64'h393E2EB14E35C3BA, 64'hA83B1D4055E0BBAB, 64'hE3ED667F223003D5,
    64'hA187D030F1EB0929, 64'h5C25D7DE163F3BCA, 64'h2799A1456DA8868A, 64'h7BF337AEDDDA0FCE,
    64'h54263B43818283CE, 64'h55EBBCB8DA19ED3B, 64'hBCD4C7DC608AE022, 64'h1E01BA4297843D00,
    64'h1B930478FD1E8D9A, 64'hBDE217BB78E23413, 64'hBFEC9D7B8D053954, 64'h3F3340DD5075C2A3,
    64'h456B3324F67299A3, 64'h5332B6E3487896AB, 64'h4981F5D2AC4FBA62, 64'h9E5BEDBBAB4180A7,
    64'h6F305E3ED8616B82, 64'hA38E5497BF537520, 64'hA66D8538CE8F344A, 64'h08681305FE8C0C5F,
    64'h6C72D4195AC31CB3, 64'h321CC404148BE926, 64'hCF404259A7F58785, 64'h8BF61BF71ADF27BD,
    64'h3132511A107C9227, 64'hDF8E2BADB7ED5B16, 64'hBE4941FB5A01A511, 64'h51E298A7D87363E8,
    64'h8B54E82452364729, 64'h3E62E3375B90B7E3, 64'h1EA0CD9BB264209B, 64'hF605513359836138,
    64'h26B4CB1FAEED6727, 64'h7ECB2D6E699102A7, 64'h69DFAB8E6ABDCFB0, 64'hD26D0AF41D705B8C,
    64'hD3BFA10891DA2E64, 64'h8958D0E7783428BE, 64'h2F0F7A7DF8432717, 64'hB7C9447D3ED44865,
    64'hC346B580B4C134B6, 64'h875AC5CC6E1EEFFF, 64'h89A15EBC2EB419C6, 64'hBAE947DB1ED90D98,
    64'h442FB4963D8CCB5A, 64'hDD552FB73CDC253B, 64'h3D20028A46C95F61, 64'h8BCEB340A1117A06,
    64'h82B29CE6A8A6C0FE, 64'h6AF67CDB99D6A4E3, 64'h253201A252AB73E0, 64'hDC83BCF6953CC02D,
    64'hC1A13A1A73C1AB91, 64'h25E73536AB9616EB, 64'h763AEF4F51C81A81, 64'hF2B345A0DDEC0727,
    64'h8DC27BCFAD57DCE4, 64'h0E523CCB9E76A61A, 64'h692B2614C46AD929, 64'hC7FB175072C774EA,
    64'hA2144DAECCF6F6E9, 64'h3F48D539FDE95CA5, 64'h2F32030E22BE49F4, 64'h7BF193E04ED7FFAA,
    64'h472E72FD3D209BAA, 64'hD44E77904199D383, 64'h10C3F525EE8EFC14, 64'h2EF2CCAF5015A7FC,
    64'hDBA6C531318AED48, 64'hE92F99F6E62DAAD7, 64'h205D258E81B625BF, 64'hCC7BC7A799FD0B2E,
    64'h777B7C4BD5C82F03, 64'hC455988FBAE0D736, 64'hB422582F4928894E, 64'hD92D0568661E4523,
    64'h195C4C0F58EF4706, 64'hB99CCFFE7D1A57C5, 64'hBC50CFBA9549FEAD, 64'h39FA377DF6C8DBBF,
    64'h8D84C98400A34DF5, 64'h801C2BB11AFA583F, 64'h47E9C8254717E5BC, 64'hA27F2EC8E2976D2C,
    64'h40886FABF22D85F1, 64'hBB6E682F20032A06, 64'hBBBCDC2917A1E691, 64'hBF6A3835C9BF79E0,
    64'h933B02204068D38A, 64'h3B4E64B36970DC3F, 64'h590789377BD0B496, 64'hA51511ED0A4F468C,
    64'h62F895CDD48A7E75, 64'h45888315951DD3ED, 64'h125BCF0C25C93DE9, 64'h796E3905956CB25B,
    64'hF084B845F9E6CD17, 64'h4BA070AA327CAD54, 64'h38934FAF97731873, 64'hA4B971365864D2B3,
    64'h34C56526297502D4, 64'h0ACE3C0FA230980F, 64'h4E1D5B4BCCA5DD50, 64'h331E0F83EC1D02A2,
    64'hBFA809066C40533F, 64'h11A64CFFC4A1C97A, 64'h779F9E82E1DC7F16, 64'h9C3097E65430B6E3,
    64'hD8FED736E3C30E1F, 64'h027A2B76A429F05D, 64'hC10CAC2A5AC10FE8, 64'hE2C4BA1C7F44B75A,
    64'hDC50A39532C9576D, 64'hCD99E63EDA299CDE, 64'h869AEF4B25CFEA54, 64'h808C132E72115B82,
    64'h4D9C2E85A6075690, 64'h5CE7BD8EB2F10586, 64'h85C8A49ADF204CFE, 64'h6C8D136761CD9DCC,
    64'h9A4687E188270140, 64'h05FD34D3CCFE3F0A, 64'h84E1E3972915527D, 64'h13A0F22244390CD2,
    64'hDFEC3F18485CA25F, 64'h8F36B196F11BDC6F, 64'hD21D5FFF8560D940, 64'h81AE2CC84BAF9453,
    64'h4071C52A9702BF22, 64'h28D031D1B911E0BC, 64'hA3FD314ABC82139D, 64'h201D251507874E62,
    64'hF03ADCC8302A7C4A, 64'h2E466D6A4EE66992, 64'hEBCDE2DC284B5BF1, 64'h8787F1C431CEC6E8,
    64'hFC37C92B2AB30BD1, 64'hBFC79520D0738014, 64'h42F11BF054B930A0, 64'h1D6349A1082078FB
  };
endpackage