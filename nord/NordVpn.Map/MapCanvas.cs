using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Diagnostics;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Markup;
using System.Windows.Shapes;

namespace NordVpn.Map
{
	public class MapCanvas : UserControl, IComponentConnector
	{
		internal Canvas g996;

		internal Canvas countries;

		internal Path by;

		internal Canvas ru;

		internal Rectangle rect3;

		internal Path path5;

		internal Path path7;

		internal Path path9;

		internal Path path11;

		internal Path path13;

		internal Path path15;

		internal Path path17;

		internal Path path19;

		internal Path path21;

		internal Canvas cn;

		internal Path path24;

		internal Ellipse circle26;

		internal Path bf;

		internal Path ml;

		internal Path ma;

		internal Path cd;

		internal Path bi;

		internal Path sd;

		internal Path er;

		internal Path rw;

		internal Path cf;

		internal Path co;

		internal Path ne;

		internal Path me;

		internal Path rs;

		internal Path bg;

		internal Path et;

		internal Path mk;

		internal Path ba;

		internal Path al;

		internal Path cz;

		internal Path lu;

		internal Path hu;

		internal Path ch;

		internal Path sk;

		internal Path hr;

		internal Path sr;

		internal Path gy;

		internal Ellipse bb;

		internal Path gf;

		internal Path ie;

		internal Path lv;

		internal Path nl;

		internal Path fi;

		internal Path ee;

		internal Path lt;

		internal Path pl;

		internal Path kw;

		internal Path be;

		internal Path fo;

		internal Path dj;

		internal Canvas gb;

		internal Rectangle rect68;

		internal Path path70;

		internal Path path72;

		internal Path am;

		internal Path tr;

		internal Path zm;

		internal Path tm;

		internal Path sa;

		internal Path tj;

		internal Path kg;

		internal Path az;

		internal Path mw;

		internal Path zw;

		internal Path bw;

		internal Path qa;

		internal Path tz;

		internal Path bh;

		internal Path ae;

		internal Path iq;

		internal Path nc;

		internal Path ua;

		internal Canvas no;

		internal Rectangle rect93;

		internal Path path95;

		internal Path kz;

		internal Path uz;

		internal Canvas sj;

		internal Path path100;

		internal Path path102;

		internal Path sb;

		internal Path ro;

		internal Path lb;

		internal Path sy;

		internal Path eg;

		internal Path md;

		internal Path il;

		internal Path cy;

		internal Path jo;

		internal Canvas fr;

		internal Path path114;

		internal Path path116;

		internal Canvas gr;

		internal Path path119;

		internal Path path121;

		internal Path si;

		internal Path tn;

		internal Canvas it;

		internal Path path126;

		internal Path path128;

		internal Path td;

		internal Path ly;

		internal Path cm;

		internal Canvas es;

		internal Rectangle rect134;

		internal Ellipse circle136;

		internal Path path138;

		internal Ellipse circle140;

		internal Ellipse circle142;

		internal Path path144;

		internal Path path146;

		internal Path im;

		internal Path de;

		internal Path mr;

		internal Path se;

		internal Path dk;

		internal Path ad;

		internal Path mc;

		internal Path dz;

		internal Path ug;

		internal Path lk;

		internal Path @in;

		internal Path pk;

		internal Path bd;

		internal Path af;

		internal Path ir;

		internal Path tf_1_;

		internal Path hm;

		internal Path hk;

		internal Path bn;

		internal Path vn;

		internal Path np;

		internal Path bt;

		internal Path mm;

		internal Path mu;

		internal Path sz;

		internal Path ke;

		internal Path mg;

		internal Path na;

		internal Path om;

		internal Path za;

		internal Path ls;

		internal Path km;

		internal Path re;

		internal Path sc;

		internal Path mv;

		internal Path yt;

		internal Path so;

		internal Path ye;

		internal Path mz;

		internal Canvas au;

		internal Path path188;

		internal Path path190;

		internal Path la;

		internal Canvas th;

		internal Rectangle rect194;

		internal Path path196;

		internal Path gu;

		internal Path vu;

		internal Canvas pg;

		internal Path path201;

		internal Path path203;

		internal Path fj;

		internal Path mn;

		internal Canvas nz;

		internal Rectangle rect208;

		internal Path path210;

		internal Path path212;

		internal Path kh;

		internal Path tl;

		internal Path sg;

		internal Canvas jp;

		internal Rectangle rect218;

		internal Path path220;

		internal Path path222;

		internal Canvas ph;

		internal Path path225;

		internal Path path227;

		internal Canvas my;

		internal Rectangle rect230;

		internal Path path232;

		internal Path path234;

		internal Path kr;

		internal Canvas id;

		internal Rectangle rect238;

		internal Path path240;

		internal Path path242;

		internal Path path244;

		internal Path path246;

		internal Path path248;

		internal Path path250;

		internal Path kp;

		internal Path tw;

		internal Path gt;

		internal Path hn;

		internal Path sv;

		internal Canvas us;

		internal Rectangle rect258;

		internal Rectangle usak;

		internal Rectangle uswa;

		internal Rectangle usor;

		internal Rectangle usca;

		internal Rectangle usnv;

		internal Rectangle usid;

		internal Rectangle usaz;

		internal Rectangle usut;

		internal Rectangle usmt;

		internal Rectangle uswy;

		internal Rectangle usco;

		internal Rectangle usnm;

		internal Rectangle ustx;

		internal Rectangle usok;

		internal Rectangle usks;

		internal Rectangle usne;

		internal Rectangle ussd;

		internal Rectangle usnd;

		internal Rectangle usla;

		internal Rectangle usar;

		internal Rectangle usmo;

		internal Rectangle usia;

		internal Rectangle usmn;

		internal Rectangle usms;

		internal Rectangle usky;

		internal Rectangle ustn;

		internal Rectangle usal;

		internal Rectangle uswi;

		internal Rectangle usil;

		internal Rectangle usmi;

		internal Rectangle usin;

		internal Rectangle usfl;

		internal Rectangle usga;

		internal Rectangle ussc;

		internal Rectangle usnc;

		internal Rectangle usva;

		internal Rectangle uswv;

		internal Rectangle usoh;

		internal Rectangle usme;

		internal Rectangle usnh;

		internal Rectangle usvt;

		internal Rectangle usny;

		internal Rectangle usct;

		internal Rectangle uspa;

		internal Rectangle usnj;

		internal Rectangle usde;

		internal Rectangle usmd;

		internal Rectangle ushi;

		internal Path path311;

		internal Path path313;

		internal Path path315;

		internal Path mx;

		internal Path bz;

		internal Path pe;

		internal Canvas cl;

		internal Rectangle rect321;

		internal Path path323;

		internal Path bo;

		internal Path cu;

		internal Path cr;

		internal Path pa;

		internal Path ni;

		internal Path jm;

		internal Path @do;

		internal Path pr;

		internal Path ve;

		internal Path ht;

		internal Path py;

		internal Ellipse ag;

		internal Ellipse lc;

		internal Ellipse vi;

		internal Ellipse ky;

		internal Ellipse dm;

		internal Ellipse tc;

		internal Ellipse mq;

		internal Ellipse gp;

		internal Ellipse tt;

		internal Canvas ca;

		internal Rectangle rect346;

		internal Path path348;

		internal Path path350;

		internal Path path352;

		internal Path path354;

		internal Path path356;

		internal Path path358;

		internal Path path360;

		internal Path path362;

		internal Path path364;

		internal Path path366;

		internal Path path368;

		internal Ellipse gd;

		internal Ellipse ai;

		internal Ellipse vg;

		internal Ellipse kn;

		internal Ellipse vc;

		internal Ellipse ms;

		internal Canvas bs;

		internal Ellipse circle377;

		internal Ellipse circle379;

		internal Path fk;

		internal Path lr;

		internal Path ci;

		internal Path sl;

		internal Path gw;

		internal Path gn;

		internal Path gm;

		internal Path gh;

		internal Path sn;

		internal Canvas gq;

		internal Path path391;

		internal Ellipse circle393;

		internal Path ga;

		internal Path tg;

		internal Path ar;

		internal Path bj;

		internal Ellipse st;

		internal Path ng;

		internal Path cg;

		internal Path gs;

		internal Path br;

		internal Canvas ao;

		internal Path path405;

		internal Path path407;

		internal Path uy;

		internal Path @is;

		internal Canvas ec;

		internal Path path412;

		internal Path path414;

		internal Canvas cv;

		internal Ellipse circle417;

		internal Ellipse circle419;

		internal Ellipse circle421;

		internal Canvas pt;

		internal Rectangle rect424;

		internal Ellipse circle426;

		internal Ellipse circle428;

		internal Ellipse circle430;

		internal Ellipse circle432;

		internal Ellipse circle434;

		internal Path path436;

		internal Path gl;

		internal Path li;

		internal Path at;

		internal Path ge;

		internal Canvas decorations;

		internal Path path444;

		internal Path path446;

		internal Path path448;

		internal Path path450;

		internal Path path452;

		internal Path path454;

		internal Path path456;

		internal Path path458;

		internal Path path460;

		internal Path path462;

		internal Path path464;

		internal Path path466;

		internal Canvas g488;

		internal Path path468;

		internal Rectangle rect470;

		internal Path path472;

		internal Path path474;

		internal Path path476;

		internal Canvas g486;

		internal Ellipse circle478;

		internal Ellipse circle480;

		internal Ellipse circle482;

		internal Ellipse circle484;

		internal Canvas g510;

		internal Path path490;

		internal Rectangle rect492;

		internal Path path494;

		internal Path path496;

		internal Path path498;

		internal Canvas g508;

		internal Ellipse circle500;

		internal Ellipse circle502;

		internal Ellipse circle504;

		internal Ellipse circle506;

		internal Canvas g532;

		internal Path path512;

		internal Rectangle rect514;

		internal Path path516;

		internal Path path518;

		internal Path path520;

		internal Canvas g530;

		internal Ellipse circle522;

		internal Ellipse circle524;

		internal Ellipse circle526;

		internal Ellipse circle528;

		internal Canvas g554;

		internal Path path534;

		internal Rectangle rect536;

		internal Path path538;

		internal Path path540;

		internal Path path542;

		internal Canvas g552;

		internal Ellipse circle544;

		internal Ellipse circle546;

		internal Ellipse circle548;

		internal Ellipse circle550;

		internal Canvas g616;

		internal Canvas g602;

		internal Path path600;

		internal Canvas g606;

		internal Path path604;

		internal Canvas g610;

		internal Path path608;

		internal Canvas g614;

		internal Path path612;

		internal Canvas g634;

		internal Canvas g620;

		internal Path path618;

		internal Canvas g624;

		internal Path path622;

		internal Canvas g628;

		internal Path path626;

		internal Canvas g632;

		internal Path path630;

		internal Canvas g652;

		internal Canvas g638;

		internal Path path636;

		internal Canvas g642;

		internal Path path640;

		internal Canvas g646;

		internal Path path644;

		internal Canvas g650;

		internal Path path648;

		internal Canvas g670;

		internal Canvas g656;

		internal Path path654;

		internal Canvas g660;

		internal Path path658;

		internal Canvas g664;

		internal Path path662;

		internal Canvas g668;

		internal Path path666;

		internal Canvas g688;

		internal Canvas g674;

		internal Path path672;

		internal Canvas g678;

		internal Path path676;

		internal Canvas g682;

		internal Path path680;

		internal Canvas g686;

		internal Path path684;

		internal Canvas g710;

		internal Path path690;

		internal Rectangle rect692;

		internal Path path694;

		internal Path path696;

		internal Path path698;

		internal Canvas g708;

		internal Ellipse circle700;

		internal Ellipse circle702;

		internal Ellipse circle704;

		internal Ellipse circle706;

		internal Canvas g732;

		internal Path path712;

		internal Rectangle rect714;

		internal Path path716;

		internal Path path718;

		internal Path path720;

		internal Canvas g730;

		internal Ellipse circle722;

		internal Ellipse circle724;

		internal Ellipse circle726;

		internal Ellipse circle728;

		internal Canvas g754;

		internal Path path734;

		internal Rectangle rect736;

		internal Path path738;

		internal Path path740;

		internal Path path742;

		internal Canvas g752;

		internal Ellipse circle744;

		internal Ellipse circle746;

		internal Ellipse circle748;

		internal Ellipse circle750;

		internal Canvas g776;

		internal Path path756;

		internal Rectangle rect758;

		internal Path path760;

		internal Path path762;

		internal Path path764;

		internal Canvas g774;

		internal Ellipse circle766;

		internal Ellipse circle768;

		internal Ellipse circle770;

		internal Ellipse circle772;

		internal Canvas g798;

		internal Path path778;

		internal Rectangle rect780;

		internal Path path782;

		internal Path path784;

		internal Path path786;

		internal Canvas g796;

		internal Ellipse circle788;

		internal Ellipse circle790;

		internal Ellipse circle792;

		internal Ellipse circle794;

		internal Path path800;

		internal Path path802;

		internal Path path804;

		internal Path path806;

		internal Path path808;

		internal Path path810;

		internal Path path812;

		internal Path path814;

		internal Path path816;

		internal Path path818;

		internal Path path820;

		internal Path path822;

		internal Path path824;

		internal Path path826;

		internal Path path828;

		internal Path path830;

		internal Path path832;

		internal Path path834;

		internal Path path836;

		internal Path path838;

		internal Path path840;

		internal Path path842;

		internal Path path844;

		internal Path path846;

		internal Path path848;

		internal Path path850;

		internal Path path852;

		internal Path path854;

		internal Path path856;

		internal Canvas g862;

		internal Path path858;

		internal Path path860;

		internal Canvas g868;

		internal Path path864;

		internal Path path866;

		internal Canvas g874;

		internal Path path870;

		internal Path path872;

		internal Canvas g880;

		internal Path path876;

		internal Path path878;

		internal Canvas g886;

		internal Path path882;

		internal Path path884;

		internal Canvas g892;

		internal Path path888;

		internal Path path890;

		internal Canvas g898;

		internal Path path894;

		internal Path path896;

		internal Canvas g904;

		internal Path path900;

		internal Path path902;

		internal Canvas g910;

		internal Path path906;

		internal Path path908;

		internal Canvas g916;

		internal Path path912;

		internal Path path914;

		internal Canvas g922;

		internal Path path918;

		internal Path path920;

		internal Canvas g928;

		internal Path path924;

		internal Path path926;

		internal Canvas g934;

		internal Path path930;

		internal Path path932;

		internal Canvas g940;

		internal Path path936;

		internal Path path938;

		internal Canvas g946;

		internal Path path942;

		internal Path path944;

		internal Canvas g950;

		internal Path path948;

		internal Canvas g954;

		internal Path path952;

		internal Canvas g958;

		internal Path path956;

		internal Canvas g962;

		internal Path path960;

		internal Canvas g966;

		internal Path path964;

		internal Canvas g970;

		internal Path path968;

		internal Canvas g974;

		internal Path path972;

		internal Canvas g978;

		internal Path path976;

		internal Canvas g982;

		internal Path path980;

		internal Canvas g986;

		internal Path path984;

		internal Path path988;

		internal Canvas g992;

		internal Path path990;

		internal Canvas pins;

		private bool _contentLoaded;

		public MapCanvas()
		{
			this.InitializeComponent();
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), DebuggerNonUserCode]
		public void InitializeComponent()
		{
			if (this._contentLoaded)
			{
				return;
			}
			this._contentLoaded = true;
			Uri resourceLocator = new Uri("/NordVPN;component/map/mapcanvas.xaml", UriKind.Relative);
			Application.LoadComponent(this, resourceLocator);
		}

		[GeneratedCode("PresentationBuildTasks", "4.0.0.0"), EditorBrowsable(EditorBrowsableState.Never), DebuggerNonUserCode]
		void IComponentConnector.Connect(int connectionId, object target)
		{
			switch (connectionId)
			{
			case 1:
				this.g996 = (Canvas)target;
				return;
			case 2:
				this.countries = (Canvas)target;
				return;
			case 3:
				this.by = (Path)target;
				return;
			case 4:
				this.ru = (Canvas)target;
				return;
			case 5:
				this.rect3 = (Rectangle)target;
				return;
			case 6:
				this.path5 = (Path)target;
				return;
			case 7:
				this.path7 = (Path)target;
				return;
			case 8:
				this.path9 = (Path)target;
				return;
			case 9:
				this.path11 = (Path)target;
				return;
			case 10:
				this.path13 = (Path)target;
				return;
			case 11:
				this.path15 = (Path)target;
				return;
			case 12:
				this.path17 = (Path)target;
				return;
			case 13:
				this.path19 = (Path)target;
				return;
			case 14:
				this.path21 = (Path)target;
				return;
			case 15:
				this.cn = (Canvas)target;
				return;
			case 16:
				this.path24 = (Path)target;
				return;
			case 17:
				this.circle26 = (Ellipse)target;
				return;
			case 18:
				this.bf = (Path)target;
				return;
			case 19:
				this.ml = (Path)target;
				return;
			case 20:
				this.ma = (Path)target;
				return;
			case 21:
				this.cd = (Path)target;
				return;
			case 22:
				this.bi = (Path)target;
				return;
			case 23:
				this.sd = (Path)target;
				return;
			case 24:
				this.er = (Path)target;
				return;
			case 25:
				this.rw = (Path)target;
				return;
			case 26:
				this.cf = (Path)target;
				return;
			case 27:
				this.co = (Path)target;
				return;
			case 28:
				this.ne = (Path)target;
				return;
			case 29:
				this.me = (Path)target;
				return;
			case 30:
				this.rs = (Path)target;
				return;
			case 31:
				this.bg = (Path)target;
				return;
			case 32:
				this.et = (Path)target;
				return;
			case 33:
				this.mk = (Path)target;
				return;
			case 34:
				this.ba = (Path)target;
				return;
			case 35:
				this.al = (Path)target;
				return;
			case 36:
				this.cz = (Path)target;
				return;
			case 37:
				this.lu = (Path)target;
				return;
			case 38:
				this.hu = (Path)target;
				return;
			case 39:
				this.ch = (Path)target;
				return;
			case 40:
				this.sk = (Path)target;
				return;
			case 41:
				this.hr = (Path)target;
				return;
			case 42:
				this.sr = (Path)target;
				return;
			case 43:
				this.gy = (Path)target;
				return;
			case 44:
				this.bb = (Ellipse)target;
				return;
			case 45:
				this.gf = (Path)target;
				return;
			case 46:
				this.ie = (Path)target;
				return;
			case 47:
				this.lv = (Path)target;
				return;
			case 48:
				this.nl = (Path)target;
				return;
			case 49:
				this.fi = (Path)target;
				return;
			case 50:
				this.ee = (Path)target;
				return;
			case 51:
				this.lt = (Path)target;
				return;
			case 52:
				this.pl = (Path)target;
				return;
			case 53:
				this.kw = (Path)target;
				return;
			case 54:
				this.be = (Path)target;
				return;
			case 55:
				this.fo = (Path)target;
				return;
			case 56:
				this.dj = (Path)target;
				return;
			case 57:
				this.gb = (Canvas)target;
				return;
			case 58:
				this.rect68 = (Rectangle)target;
				return;
			case 59:
				this.path70 = (Path)target;
				return;
			case 60:
				this.path72 = (Path)target;
				return;
			case 61:
				this.am = (Path)target;
				return;
			case 62:
				this.tr = (Path)target;
				return;
			case 63:
				this.zm = (Path)target;
				return;
			case 64:
				this.tm = (Path)target;
				return;
			case 65:
				this.sa = (Path)target;
				return;
			case 66:
				this.tj = (Path)target;
				return;
			case 67:
				this.kg = (Path)target;
				return;
			case 68:
				this.az = (Path)target;
				return;
			case 69:
				this.mw = (Path)target;
				return;
			case 70:
				this.zw = (Path)target;
				return;
			case 71:
				this.bw = (Path)target;
				return;
			case 72:
				this.qa = (Path)target;
				return;
			case 73:
				this.tz = (Path)target;
				return;
			case 74:
				this.bh = (Path)target;
				return;
			case 75:
				this.ae = (Path)target;
				return;
			case 76:
				this.iq = (Path)target;
				return;
			case 77:
				this.nc = (Path)target;
				return;
			case 78:
				this.ua = (Path)target;
				return;
			case 79:
				this.no = (Canvas)target;
				return;
			case 80:
				this.rect93 = (Rectangle)target;
				return;
			case 81:
				this.path95 = (Path)target;
				return;
			case 82:
				this.kz = (Path)target;
				return;
			case 83:
				this.uz = (Path)target;
				return;
			case 84:
				this.sj = (Canvas)target;
				return;
			case 85:
				this.path100 = (Path)target;
				return;
			case 86:
				this.path102 = (Path)target;
				return;
			case 87:
				this.sb = (Path)target;
				return;
			case 88:
				this.ro = (Path)target;
				return;
			case 89:
				this.lb = (Path)target;
				return;
			case 90:
				this.sy = (Path)target;
				return;
			case 91:
				this.eg = (Path)target;
				return;
			case 92:
				this.md = (Path)target;
				return;
			case 93:
				this.il = (Path)target;
				return;
			case 94:
				this.cy = (Path)target;
				return;
			case 95:
				this.jo = (Path)target;
				return;
			case 96:
				this.fr = (Canvas)target;
				return;
			case 97:
				this.path114 = (Path)target;
				return;
			case 98:
				this.path116 = (Path)target;
				return;
			case 99:
				this.gr = (Canvas)target;
				return;
			case 100:
				this.path119 = (Path)target;
				return;
			case 101:
				this.path121 = (Path)target;
				return;
			case 102:
				this.si = (Path)target;
				return;
			case 103:
				this.tn = (Path)target;
				return;
			case 104:
				this.it = (Canvas)target;
				return;
			case 105:
				this.path126 = (Path)target;
				return;
			case 106:
				this.path128 = (Path)target;
				return;
			case 107:
				this.td = (Path)target;
				return;
			case 108:
				this.ly = (Path)target;
				return;
			case 109:
				this.cm = (Path)target;
				return;
			case 110:
				this.es = (Canvas)target;
				return;
			case 111:
				this.rect134 = (Rectangle)target;
				return;
			case 112:
				this.circle136 = (Ellipse)target;
				return;
			case 113:
				this.path138 = (Path)target;
				return;
			case 114:
				this.circle140 = (Ellipse)target;
				return;
			case 115:
				this.circle142 = (Ellipse)target;
				return;
			case 116:
				this.path144 = (Path)target;
				return;
			case 117:
				this.path146 = (Path)target;
				return;
			case 118:
				this.im = (Path)target;
				return;
			case 119:
				this.de = (Path)target;
				return;
			case 120:
				this.mr = (Path)target;
				return;
			case 121:
				this.se = (Path)target;
				return;
			case 122:
				this.dk = (Path)target;
				return;
			case 123:
				this.ad = (Path)target;
				return;
			case 124:
				this.mc = (Path)target;
				return;
			case 125:
				this.dz = (Path)target;
				return;
			case 126:
				this.ug = (Path)target;
				return;
			case 127:
				this.lk = (Path)target;
				return;
			case 128:
				this.@in = (Path)target;
				return;
			case 129:
				this.pk = (Path)target;
				return;
			case 130:
				this.bd = (Path)target;
				return;
			case 131:
				this.af = (Path)target;
				return;
			case 132:
				this.ir = (Path)target;
				return;
			case 133:
				this.tf_1_ = (Path)target;
				return;
			case 134:
				this.hm = (Path)target;
				return;
			case 135:
				this.hk = (Path)target;
				return;
			case 136:
				this.bn = (Path)target;
				return;
			case 137:
				this.vn = (Path)target;
				return;
			case 138:
				this.np = (Path)target;
				return;
			case 139:
				this.bt = (Path)target;
				return;
			case 140:
				this.mm = (Path)target;
				return;
			case 141:
				this.mu = (Path)target;
				return;
			case 142:
				this.sz = (Path)target;
				return;
			case 143:
				this.ke = (Path)target;
				return;
			case 144:
				this.mg = (Path)target;
				return;
			case 145:
				this.na = (Path)target;
				return;
			case 146:
				this.om = (Path)target;
				return;
			case 147:
				this.za = (Path)target;
				return;
			case 148:
				this.ls = (Path)target;
				return;
			case 149:
				this.km = (Path)target;
				return;
			case 150:
				this.re = (Path)target;
				return;
			case 151:
				this.sc = (Path)target;
				return;
			case 152:
				this.mv = (Path)target;
				return;
			case 153:
				this.yt = (Path)target;
				return;
			case 154:
				this.so = (Path)target;
				return;
			case 155:
				this.ye = (Path)target;
				return;
			case 156:
				this.mz = (Path)target;
				return;
			case 157:
				this.au = (Canvas)target;
				return;
			case 158:
				this.path188 = (Path)target;
				return;
			case 159:
				this.path190 = (Path)target;
				return;
			case 160:
				this.la = (Path)target;
				return;
			case 161:
				this.th = (Canvas)target;
				return;
			case 162:
				this.rect194 = (Rectangle)target;
				return;
			case 163:
				this.path196 = (Path)target;
				return;
			case 164:
				this.gu = (Path)target;
				return;
			case 165:
				this.vu = (Path)target;
				return;
			case 166:
				this.pg = (Canvas)target;
				return;
			case 167:
				this.path201 = (Path)target;
				return;
			case 168:
				this.path203 = (Path)target;
				return;
			case 169:
				this.fj = (Path)target;
				return;
			case 170:
				this.mn = (Path)target;
				return;
			case 171:
				this.nz = (Canvas)target;
				return;
			case 172:
				this.rect208 = (Rectangle)target;
				return;
			case 173:
				this.path210 = (Path)target;
				return;
			case 174:
				this.path212 = (Path)target;
				return;
			case 175:
				this.kh = (Path)target;
				return;
			case 176:
				this.tl = (Path)target;
				return;
			case 177:
				this.sg = (Path)target;
				return;
			case 178:
				this.jp = (Canvas)target;
				return;
			case 179:
				this.rect218 = (Rectangle)target;
				return;
			case 180:
				this.path220 = (Path)target;
				return;
			case 181:
				this.path222 = (Path)target;
				return;
			case 182:
				this.ph = (Canvas)target;
				return;
			case 183:
				this.path225 = (Path)target;
				return;
			case 184:
				this.path227 = (Path)target;
				return;
			case 185:
				this.my = (Canvas)target;
				return;
			case 186:
				this.rect230 = (Rectangle)target;
				return;
			case 187:
				this.path232 = (Path)target;
				return;
			case 188:
				this.path234 = (Path)target;
				return;
			case 189:
				this.kr = (Path)target;
				return;
			case 190:
				this.id = (Canvas)target;
				return;
			case 191:
				this.rect238 = (Rectangle)target;
				return;
			case 192:
				this.path240 = (Path)target;
				return;
			case 193:
				this.path242 = (Path)target;
				return;
			case 194:
				this.path244 = (Path)target;
				return;
			case 195:
				this.path246 = (Path)target;
				return;
			case 196:
				this.path248 = (Path)target;
				return;
			case 197:
				this.path250 = (Path)target;
				return;
			case 198:
				this.kp = (Path)target;
				return;
			case 199:
				this.tw = (Path)target;
				return;
			case 200:
				this.gt = (Path)target;
				return;
			case 201:
				this.hn = (Path)target;
				return;
			case 202:
				this.sv = (Path)target;
				return;
			case 203:
				this.us = (Canvas)target;
				return;
			case 204:
				this.rect258 = (Rectangle)target;
				return;
			case 205:
				this.usak = (Rectangle)target;
				return;
			case 206:
				this.uswa = (Rectangle)target;
				return;
			case 207:
				this.usor = (Rectangle)target;
				return;
			case 208:
				this.usca = (Rectangle)target;
				return;
			case 209:
				this.usnv = (Rectangle)target;
				return;
			case 210:
				this.usid = (Rectangle)target;
				return;
			case 211:
				this.usaz = (Rectangle)target;
				return;
			case 212:
				this.usut = (Rectangle)target;
				return;
			case 213:
				this.usmt = (Rectangle)target;
				return;
			case 214:
				this.uswy = (Rectangle)target;
				return;
			case 215:
				this.usco = (Rectangle)target;
				return;
			case 216:
				this.usnm = (Rectangle)target;
				return;
			case 217:
				this.ustx = (Rectangle)target;
				return;
			case 218:
				this.usok = (Rectangle)target;
				return;
			case 219:
				this.usks = (Rectangle)target;
				return;
			case 220:
				this.usne = (Rectangle)target;
				return;
			case 221:
				this.ussd = (Rectangle)target;
				return;
			case 222:
				this.usnd = (Rectangle)target;
				return;
			case 223:
				this.usla = (Rectangle)target;
				return;
			case 224:
				this.usar = (Rectangle)target;
				return;
			case 225:
				this.usmo = (Rectangle)target;
				return;
			case 226:
				this.usia = (Rectangle)target;
				return;
			case 227:
				this.usmn = (Rectangle)target;
				return;
			case 228:
				this.usms = (Rectangle)target;
				return;
			case 229:
				this.usky = (Rectangle)target;
				return;
			case 230:
				this.ustn = (Rectangle)target;
				return;
			case 231:
				this.usal = (Rectangle)target;
				return;
			case 232:
				this.uswi = (Rectangle)target;
				return;
			case 233:
				this.usil = (Rectangle)target;
				return;
			case 234:
				this.usmi = (Rectangle)target;
				return;
			case 235:
				this.usin = (Rectangle)target;
				return;
			case 236:
				this.usfl = (Rectangle)target;
				return;
			case 237:
				this.usga = (Rectangle)target;
				return;
			case 238:
				this.ussc = (Rectangle)target;
				return;
			case 239:
				this.usnc = (Rectangle)target;
				return;
			case 240:
				this.usva = (Rectangle)target;
				return;
			case 241:
				this.uswv = (Rectangle)target;
				return;
			case 242:
				this.usoh = (Rectangle)target;
				return;
			case 243:
				this.usme = (Rectangle)target;
				return;
			case 244:
				this.usnh = (Rectangle)target;
				return;
			case 245:
				this.usvt = (Rectangle)target;
				return;
			case 246:
				this.usny = (Rectangle)target;
				return;
			case 247:
				this.usct = (Rectangle)target;
				return;
			case 248:
				this.uspa = (Rectangle)target;
				return;
			case 249:
				this.usnj = (Rectangle)target;
				return;
			case 250:
				this.usde = (Rectangle)target;
				return;
			case 251:
				this.usmd = (Rectangle)target;
				return;
			case 252:
				this.ushi = (Rectangle)target;
				return;
			case 253:
				this.path311 = (Path)target;
				return;
			case 254:
				this.path313 = (Path)target;
				return;
			case 255:
				this.path315 = (Path)target;
				return;
			case 256:
				this.mx = (Path)target;
				return;
			case 257:
				this.bz = (Path)target;
				return;
			case 258:
				this.pe = (Path)target;
				return;
			case 259:
				this.cl = (Canvas)target;
				return;
			case 260:
				this.rect321 = (Rectangle)target;
				return;
			case 261:
				this.path323 = (Path)target;
				return;
			case 262:
				this.bo = (Path)target;
				return;
			case 263:
				this.cu = (Path)target;
				return;
			case 264:
				this.cr = (Path)target;
				return;
			case 265:
				this.pa = (Path)target;
				return;
			case 266:
				this.ni = (Path)target;
				return;
			case 267:
				this.jm = (Path)target;
				return;
			case 268:
				this.@do = (Path)target;
				return;
			case 269:
				this.pr = (Path)target;
				return;
			case 270:
				this.ve = (Path)target;
				return;
			case 271:
				this.ht = (Path)target;
				return;
			case 272:
				this.py = (Path)target;
				return;
			case 273:
				this.ag = (Ellipse)target;
				return;
			case 274:
				this.lc = (Ellipse)target;
				return;
			case 275:
				this.vi = (Ellipse)target;
				return;
			case 276:
				this.ky = (Ellipse)target;
				return;
			case 277:
				this.dm = (Ellipse)target;
				return;
			case 278:
				this.tc = (Ellipse)target;
				return;
			case 279:
				this.mq = (Ellipse)target;
				return;
			case 280:
				this.gp = (Ellipse)target;
				return;
			case 281:
				this.tt = (Ellipse)target;
				return;
			case 282:
				this.ca = (Canvas)target;
				return;
			case 283:
				this.rect346 = (Rectangle)target;
				return;
			case 284:
				this.path348 = (Path)target;
				return;
			case 285:
				this.path350 = (Path)target;
				return;
			case 286:
				this.path352 = (Path)target;
				return;
			case 287:
				this.path354 = (Path)target;
				return;
			case 288:
				this.path356 = (Path)target;
				return;
			case 289:
				this.path358 = (Path)target;
				return;
			case 290:
				this.path360 = (Path)target;
				return;
			case 291:
				this.path362 = (Path)target;
				return;
			case 292:
				this.path364 = (Path)target;
				return;
			case 293:
				this.path366 = (Path)target;
				return;
			case 294:
				this.path368 = (Path)target;
				return;
			case 295:
				this.gd = (Ellipse)target;
				return;
			case 296:
				this.ai = (Ellipse)target;
				return;
			case 297:
				this.vg = (Ellipse)target;
				return;
			case 298:
				this.kn = (Ellipse)target;
				return;
			case 299:
				this.vc = (Ellipse)target;
				return;
			case 300:
				this.ms = (Ellipse)target;
				return;
			case 301:
				this.bs = (Canvas)target;
				return;
			case 302:
				this.circle377 = (Ellipse)target;
				return;
			case 303:
				this.circle379 = (Ellipse)target;
				return;
			case 304:
				this.fk = (Path)target;
				return;
			case 305:
				this.lr = (Path)target;
				return;
			case 306:
				this.ci = (Path)target;
				return;
			case 307:
				this.sl = (Path)target;
				return;
			case 308:
				this.gw = (Path)target;
				return;
			case 309:
				this.gn = (Path)target;
				return;
			case 310:
				this.gm = (Path)target;
				return;
			case 311:
				this.gh = (Path)target;
				return;
			case 312:
				this.sn = (Path)target;
				return;
			case 313:
				this.gq = (Canvas)target;
				return;
			case 314:
				this.path391 = (Path)target;
				return;
			case 315:
				this.circle393 = (Ellipse)target;
				return;
			case 316:
				this.ga = (Path)target;
				return;
			case 317:
				this.tg = (Path)target;
				return;
			case 318:
				this.ar = (Path)target;
				return;
			case 319:
				this.bj = (Path)target;
				return;
			case 320:
				this.st = (Ellipse)target;
				return;
			case 321:
				this.ng = (Path)target;
				return;
			case 322:
				this.cg = (Path)target;
				return;
			case 323:
				this.gs = (Path)target;
				return;
			case 324:
				this.br = (Path)target;
				return;
			case 325:
				this.ao = (Canvas)target;
				return;
			case 326:
				this.path405 = (Path)target;
				return;
			case 327:
				this.path407 = (Path)target;
				return;
			case 328:
				this.uy = (Path)target;
				return;
			case 329:
				this.@is = (Path)target;
				return;
			case 330:
				this.ec = (Canvas)target;
				return;
			case 331:
				this.path412 = (Path)target;
				return;
			case 332:
				this.path414 = (Path)target;
				return;
			case 333:
				this.cv = (Canvas)target;
				return;
			case 334:
				this.circle417 = (Ellipse)target;
				return;
			case 335:
				this.circle419 = (Ellipse)target;
				return;
			case 336:
				this.circle421 = (Ellipse)target;
				return;
			case 337:
				this.pt = (Canvas)target;
				return;
			case 338:
				this.rect424 = (Rectangle)target;
				return;
			case 339:
				this.circle426 = (Ellipse)target;
				return;
			case 340:
				this.circle428 = (Ellipse)target;
				return;
			case 341:
				this.circle430 = (Ellipse)target;
				return;
			case 342:
				this.circle432 = (Ellipse)target;
				return;
			case 343:
				this.circle434 = (Ellipse)target;
				return;
			case 344:
				this.path436 = (Path)target;
				return;
			case 345:
				this.gl = (Path)target;
				return;
			case 346:
				this.li = (Path)target;
				return;
			case 347:
				this.at = (Path)target;
				return;
			case 348:
				this.ge = (Path)target;
				return;
			case 349:
				this.decorations = (Canvas)target;
				return;
			case 350:
				this.path444 = (Path)target;
				return;
			case 351:
				this.path446 = (Path)target;
				return;
			case 352:
				this.path448 = (Path)target;
				return;
			case 353:
				this.path450 = (Path)target;
				return;
			case 354:
				this.path452 = (Path)target;
				return;
			case 355:
				this.path454 = (Path)target;
				return;
			case 356:
				this.path456 = (Path)target;
				return;
			case 357:
				this.path458 = (Path)target;
				return;
			case 358:
				this.path460 = (Path)target;
				return;
			case 359:
				this.path462 = (Path)target;
				return;
			case 360:
				this.path464 = (Path)target;
				return;
			case 361:
				this.path466 = (Path)target;
				return;
			case 362:
				this.g488 = (Canvas)target;
				return;
			case 363:
				this.path468 = (Path)target;
				return;
			case 364:
				this.rect470 = (Rectangle)target;
				return;
			case 365:
				this.path472 = (Path)target;
				return;
			case 366:
				this.path474 = (Path)target;
				return;
			case 367:
				this.path476 = (Path)target;
				return;
			case 368:
				this.g486 = (Canvas)target;
				return;
			case 369:
				this.circle478 = (Ellipse)target;
				return;
			case 370:
				this.circle480 = (Ellipse)target;
				return;
			case 371:
				this.circle482 = (Ellipse)target;
				return;
			case 372:
				this.circle484 = (Ellipse)target;
				return;
			case 373:
				this.g510 = (Canvas)target;
				return;
			case 374:
				this.path490 = (Path)target;
				return;
			case 375:
				this.rect492 = (Rectangle)target;
				return;
			case 376:
				this.path494 = (Path)target;
				return;
			case 377:
				this.path496 = (Path)target;
				return;
			case 378:
				this.path498 = (Path)target;
				return;
			case 379:
				this.g508 = (Canvas)target;
				return;
			case 380:
				this.circle500 = (Ellipse)target;
				return;
			case 381:
				this.circle502 = (Ellipse)target;
				return;
			case 382:
				this.circle504 = (Ellipse)target;
				return;
			case 383:
				this.circle506 = (Ellipse)target;
				return;
			case 384:
				this.g532 = (Canvas)target;
				return;
			case 385:
				this.path512 = (Path)target;
				return;
			case 386:
				this.rect514 = (Rectangle)target;
				return;
			case 387:
				this.path516 = (Path)target;
				return;
			case 388:
				this.path518 = (Path)target;
				return;
			case 389:
				this.path520 = (Path)target;
				return;
			case 390:
				this.g530 = (Canvas)target;
				return;
			case 391:
				this.circle522 = (Ellipse)target;
				return;
			case 392:
				this.circle524 = (Ellipse)target;
				return;
			case 393:
				this.circle526 = (Ellipse)target;
				return;
			case 394:
				this.circle528 = (Ellipse)target;
				return;
			case 395:
				this.g554 = (Canvas)target;
				return;
			case 396:
				this.path534 = (Path)target;
				return;
			case 397:
				this.rect536 = (Rectangle)target;
				return;
			case 398:
				this.path538 = (Path)target;
				return;
			case 399:
				this.path540 = (Path)target;
				return;
			case 400:
				this.path542 = (Path)target;
				return;
			case 401:
				this.g552 = (Canvas)target;
				return;
			case 402:
				this.circle544 = (Ellipse)target;
				return;
			case 403:
				this.circle546 = (Ellipse)target;
				return;
			case 404:
				this.circle548 = (Ellipse)target;
				return;
			case 405:
				this.circle550 = (Ellipse)target;
				return;
			case 406:
				this.g616 = (Canvas)target;
				return;
			case 407:
				this.g602 = (Canvas)target;
				return;
			case 408:
				this.path600 = (Path)target;
				return;
			case 409:
				this.g606 = (Canvas)target;
				return;
			case 410:
				this.path604 = (Path)target;
				return;
			case 411:
				this.g610 = (Canvas)target;
				return;
			case 412:
				this.path608 = (Path)target;
				return;
			case 413:
				this.g614 = (Canvas)target;
				return;
			case 414:
				this.path612 = (Path)target;
				return;
			case 415:
				this.g634 = (Canvas)target;
				return;
			case 416:
				this.g620 = (Canvas)target;
				return;
			case 417:
				this.path618 = (Path)target;
				return;
			case 418:
				this.g624 = (Canvas)target;
				return;
			case 419:
				this.path622 = (Path)target;
				return;
			case 420:
				this.g628 = (Canvas)target;
				return;
			case 421:
				this.path626 = (Path)target;
				return;
			case 422:
				this.g632 = (Canvas)target;
				return;
			case 423:
				this.path630 = (Path)target;
				return;
			case 424:
				this.g652 = (Canvas)target;
				return;
			case 425:
				this.g638 = (Canvas)target;
				return;
			case 426:
				this.path636 = (Path)target;
				return;
			case 427:
				this.g642 = (Canvas)target;
				return;
			case 428:
				this.path640 = (Path)target;
				return;
			case 429:
				this.g646 = (Canvas)target;
				return;
			case 430:
				this.path644 = (Path)target;
				return;
			case 431:
				this.g650 = (Canvas)target;
				return;
			case 432:
				this.path648 = (Path)target;
				return;
			case 433:
				this.g670 = (Canvas)target;
				return;
			case 434:
				this.g656 = (Canvas)target;
				return;
			case 435:
				this.path654 = (Path)target;
				return;
			case 436:
				this.g660 = (Canvas)target;
				return;
			case 437:
				this.path658 = (Path)target;
				return;
			case 438:
				this.g664 = (Canvas)target;
				return;
			case 439:
				this.path662 = (Path)target;
				return;
			case 440:
				this.g668 = (Canvas)target;
				return;
			case 441:
				this.path666 = (Path)target;
				return;
			case 442:
				this.g688 = (Canvas)target;
				return;
			case 443:
				this.g674 = (Canvas)target;
				return;
			case 444:
				this.path672 = (Path)target;
				return;
			case 445:
				this.g678 = (Canvas)target;
				return;
			case 446:
				this.path676 = (Path)target;
				return;
			case 447:
				this.g682 = (Canvas)target;
				return;
			case 448:
				this.path680 = (Path)target;
				return;
			case 449:
				this.g686 = (Canvas)target;
				return;
			case 450:
				this.path684 = (Path)target;
				return;
			case 451:
				this.g710 = (Canvas)target;
				return;
			case 452:
				this.path690 = (Path)target;
				return;
			case 453:
				this.rect692 = (Rectangle)target;
				return;
			case 454:
				this.path694 = (Path)target;
				return;
			case 455:
				this.path696 = (Path)target;
				return;
			case 456:
				this.path698 = (Path)target;
				return;
			case 457:
				this.g708 = (Canvas)target;
				return;
			case 458:
				this.circle700 = (Ellipse)target;
				return;
			case 459:
				this.circle702 = (Ellipse)target;
				return;
			case 460:
				this.circle704 = (Ellipse)target;
				return;
			case 461:
				this.circle706 = (Ellipse)target;
				return;
			case 462:
				this.g732 = (Canvas)target;
				return;
			case 463:
				this.path712 = (Path)target;
				return;
			case 464:
				this.rect714 = (Rectangle)target;
				return;
			case 465:
				this.path716 = (Path)target;
				return;
			case 466:
				this.path718 = (Path)target;
				return;
			case 467:
				this.path720 = (Path)target;
				return;
			case 468:
				this.g730 = (Canvas)target;
				return;
			case 469:
				this.circle722 = (Ellipse)target;
				return;
			case 470:
				this.circle724 = (Ellipse)target;
				return;
			case 471:
				this.circle726 = (Ellipse)target;
				return;
			case 472:
				this.circle728 = (Ellipse)target;
				return;
			case 473:
				this.g754 = (Canvas)target;
				return;
			case 474:
				this.path734 = (Path)target;
				return;
			case 475:
				this.rect736 = (Rectangle)target;
				return;
			case 476:
				this.path738 = (Path)target;
				return;
			case 477:
				this.path740 = (Path)target;
				return;
			case 478:
				this.path742 = (Path)target;
				return;
			case 479:
				this.g752 = (Canvas)target;
				return;
			case 480:
				this.circle744 = (Ellipse)target;
				return;
			case 481:
				this.circle746 = (Ellipse)target;
				return;
			case 482:
				this.circle748 = (Ellipse)target;
				return;
			case 483:
				this.circle750 = (Ellipse)target;
				return;
			case 484:
				this.g776 = (Canvas)target;
				return;
			case 485:
				this.path756 = (Path)target;
				return;
			case 486:
				this.rect758 = (Rectangle)target;
				return;
			case 487:
				this.path760 = (Path)target;
				return;
			case 488:
				this.path762 = (Path)target;
				return;
			case 489:
				this.path764 = (Path)target;
				return;
			case 490:
				this.g774 = (Canvas)target;
				return;
			case 491:
				this.circle766 = (Ellipse)target;
				return;
			case 492:
				this.circle768 = (Ellipse)target;
				return;
			case 493:
				this.circle770 = (Ellipse)target;
				return;
			case 494:
				this.circle772 = (Ellipse)target;
				return;
			case 495:
				this.g798 = (Canvas)target;
				return;
			case 496:
				this.path778 = (Path)target;
				return;
			case 497:
				this.rect780 = (Rectangle)target;
				return;
			case 498:
				this.path782 = (Path)target;
				return;
			case 499:
				this.path784 = (Path)target;
				return;
			case 500:
				this.path786 = (Path)target;
				return;
			case 501:
				this.g796 = (Canvas)target;
				return;
			case 502:
				this.circle788 = (Ellipse)target;
				return;
			case 503:
				this.circle790 = (Ellipse)target;
				return;
			case 504:
				this.circle792 = (Ellipse)target;
				return;
			case 505:
				this.circle794 = (Ellipse)target;
				return;
			case 506:
				this.path800 = (Path)target;
				return;
			case 507:
				this.path802 = (Path)target;
				return;
			case 508:
				this.path804 = (Path)target;
				return;
			case 509:
				this.path806 = (Path)target;
				return;
			case 510:
				this.path808 = (Path)target;
				return;
			case 511:
				this.path810 = (Path)target;
				return;
			case 512:
				this.path812 = (Path)target;
				return;
			case 513:
				this.path814 = (Path)target;
				return;
			case 514:
				this.path816 = (Path)target;
				return;
			case 515:
				this.path818 = (Path)target;
				return;
			case 516:
				this.path820 = (Path)target;
				return;
			case 517:
				this.path822 = (Path)target;
				return;
			case 518:
				this.path824 = (Path)target;
				return;
			case 519:
				this.path826 = (Path)target;
				return;
			case 520:
				this.path828 = (Path)target;
				return;
			case 521:
				this.path830 = (Path)target;
				return;
			case 522:
				this.path832 = (Path)target;
				return;
			case 523:
				this.path834 = (Path)target;
				return;
			case 524:
				this.path836 = (Path)target;
				return;
			case 525:
				this.path838 = (Path)target;
				return;
			case 526:
				this.path840 = (Path)target;
				return;
			case 527:
				this.path842 = (Path)target;
				return;
			case 528:
				this.path844 = (Path)target;
				return;
			case 529:
				this.path846 = (Path)target;
				return;
			case 530:
				this.path848 = (Path)target;
				return;
			case 531:
				this.path850 = (Path)target;
				return;
			case 532:
				this.path852 = (Path)target;
				return;
			case 533:
				this.path854 = (Path)target;
				return;
			case 534:
				this.path856 = (Path)target;
				return;
			case 535:
				this.g862 = (Canvas)target;
				return;
			case 536:
				this.path858 = (Path)target;
				return;
			case 537:
				this.path860 = (Path)target;
				return;
			case 538:
				this.g868 = (Canvas)target;
				return;
			case 539:
				this.path864 = (Path)target;
				return;
			case 540:
				this.path866 = (Path)target;
				return;
			case 541:
				this.g874 = (Canvas)target;
				return;
			case 542:
				this.path870 = (Path)target;
				return;
			case 543:
				this.path872 = (Path)target;
				return;
			case 544:
				this.g880 = (Canvas)target;
				return;
			case 545:
				this.path876 = (Path)target;
				return;
			case 546:
				this.path878 = (Path)target;
				return;
			case 547:
				this.g886 = (Canvas)target;
				return;
			case 548:
				this.path882 = (Path)target;
				return;
			case 549:
				this.path884 = (Path)target;
				return;
			case 550:
				this.g892 = (Canvas)target;
				return;
			case 551:
				this.path888 = (Path)target;
				return;
			case 552:
				this.path890 = (Path)target;
				return;
			case 553:
				this.g898 = (Canvas)target;
				return;
			case 554:
				this.path894 = (Path)target;
				return;
			case 555:
				this.path896 = (Path)target;
				return;
			case 556:
				this.g904 = (Canvas)target;
				return;
			case 557:
				this.path900 = (Path)target;
				return;
			case 558:
				this.path902 = (Path)target;
				return;
			case 559:
				this.g910 = (Canvas)target;
				return;
			case 560:
				this.path906 = (Path)target;
				return;
			case 561:
				this.path908 = (Path)target;
				return;
			case 562:
				this.g916 = (Canvas)target;
				return;
			case 563:
				this.path912 = (Path)target;
				return;
			case 564:
				this.path914 = (Path)target;
				return;
			case 565:
				this.g922 = (Canvas)target;
				return;
			case 566:
				this.path918 = (Path)target;
				return;
			case 567:
				this.path920 = (Path)target;
				return;
			case 568:
				this.g928 = (Canvas)target;
				return;
			case 569:
				this.path924 = (Path)target;
				return;
			case 570:
				this.path926 = (Path)target;
				return;
			case 571:
				this.g934 = (Canvas)target;
				return;
			case 572:
				this.path930 = (Path)target;
				return;
			case 573:
				this.path932 = (Path)target;
				return;
			case 574:
				this.g940 = (Canvas)target;
				return;
			case 575:
				this.path936 = (Path)target;
				return;
			case 576:
				this.path938 = (Path)target;
				return;
			case 577:
				this.g946 = (Canvas)target;
				return;
			case 578:
				this.path942 = (Path)target;
				return;
			case 579:
				this.path944 = (Path)target;
				return;
			case 580:
				this.g950 = (Canvas)target;
				return;
			case 581:
				this.path948 = (Path)target;
				return;
			case 582:
				this.g954 = (Canvas)target;
				return;
			case 583:
				this.path952 = (Path)target;
				return;
			case 584:
				this.g958 = (Canvas)target;
				return;
			case 585:
				this.path956 = (Path)target;
				return;
			case 586:
				this.g962 = (Canvas)target;
				return;
			case 587:
				this.path960 = (Path)target;
				return;
			case 588:
				this.g966 = (Canvas)target;
				return;
			case 589:
				this.path964 = (Path)target;
				return;
			case 590:
				this.g970 = (Canvas)target;
				return;
			case 591:
				this.path968 = (Path)target;
				return;
			case 592:
				this.g974 = (Canvas)target;
				return;
			case 593:
				this.path972 = (Path)target;
				return;
			case 594:
				this.g978 = (Canvas)target;
				return;
			case 595:
				this.path976 = (Path)target;
				return;
			case 596:
				this.g982 = (Canvas)target;
				return;
			case 597:
				this.path980 = (Path)target;
				return;
			case 598:
				this.g986 = (Canvas)target;
				return;
			case 599:
				this.path984 = (Path)target;
				return;
			case 600:
				this.path988 = (Path)target;
				return;
			case 601:
				this.g992 = (Canvas)target;
				return;
			case 602:
				this.path990 = (Path)target;
				return;
			case 603:
				this.pins = (Canvas)target;
				return;
			default:
				this._contentLoaded = true;
				return;
			}
		}
	}
}
