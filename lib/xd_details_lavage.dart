import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './xd_solde.dart';
import './xd_bouton_lavage.dart';
import './xd_acceuil.dart';
import 'package:adobe_xd/page_link.dart';
import './xd_icon_support.dart';
import './xd_icon_profil.dart';
import './xd_icon_card.dart';
import './x_d.dart';
import './xd_presentation.dart';
import 'package:flutter_svg/flutter_svg.dart';

class XDDetailsLavage extends StatelessWidget {
  XDDetailsLavage({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: -19.0, end: -11.0),
            Pin(size: 240.0, start: 33.0),
            child: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(0.0, 1.036),
                      end: Alignment(0.0, -0.547),
                      colors: [
                        const Color(0xff000000),
                        const Color(0xffcbcbcb)
                      ],
                      stops: [0.0, 1.0],
                    ),
                  ),
                ),
                // Adobe XD layer: 'erik-mclean-iFq8Q3i…' (shape)
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: const AssetImage(''),
                      fit: BoxFit.cover,
                      colorFilter: new ColorFilter.mode(
                          Colors.black.withOpacity(0.3), BlendMode.dstIn),
                    ),
                  ),
                  margin: EdgeInsets.fromLTRB(16.0, 8.0, 11.0, 0.0),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: const Color(0xffffffff),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(28.0),
                topRight: Radius.circular(28.0),
              ),
            ),
            margin: EdgeInsets.fromLTRB(0.0, 236.0, 0.0, 0.0),
          ),
          Pinned.fromPins(
            Pin(start: 57.0, end: 56.0),
            Pin(size: 111.0, middle: 0.5132),
            child:
                // Adobe XD layer: 'Logo' (shape)
                Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.2), BlendMode.dstIn),
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 31.0, end: 31.0),
            Pin(size: 420.0, middle: 0.424),
            child:
                // Adobe XD layer: 'Capture web_15-10-2…' (shape)
                Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 80.0, start: 0.0),
            child:
                // Adobe XD layer: 'En-tête' (group)
                Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xffe1bd07),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(25.0),
                      bottomLeft: Radius.circular(25.0),
                    ),
                  ),
                ),
                Container(),
                Padding(
                  padding: EdgeInsets.fromLTRB(95.0, 17.0, 95.0, 16.0),
                  child:
                      // Adobe XD layer: 'Solde' (component)
                      XDSolde(),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 27.0, end: 26.0),
            Pin(size: 40.0, start: 135.0),
            child: Text(
              'Details du lavage',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 33,
                color: const Color(0xffffffff),
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 15.0, end: 14.0),
            Pin(size: 249.0, end: 97.0),
            child:
                // Adobe XD layer: 'Details Resultat' (group)
                Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xfffcfcfc),
                    borderRadius: BorderRadius.circular(5.0),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0x29000000),
                        offset: Offset(0, 0),
                        blurRadius: 10,
                      ),
                    ],
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 83.0, start: 15.0),
                  Pin(size: 78.0, start: 20.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xffffffff),
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                      border: Border.all(
                          width: 1.0, color: const Color(0xffdcdcdc)),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 221.0, end: 24.0),
                  Pin(size: 24.0, start: 30.0),
                  child: Text(
                    'Nom du lavage',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 20,
                      color: const Color(0xffe1bd07),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 221.0, end: 24.0),
                  Pin(size: 19.0, middle: 0.2783),
                  child: Text(
                    'Situation géographique',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 15,
                      color: const Color(0xff000000),
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 36.0, start: 39.0),
                  Pin(size: 36.0, middle: 0.1972),
                  child:
                      // Adobe XD layer: '1160358' (shape)
                      Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: const AssetImage(''),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 16.0, end: 17.0),
                  Pin(size: 1.0, middle: 0.5222),
                  child: SvgPicture.string(
                    _svg_yerup1,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 270.0, start: 57.0),
            Pin(size: 55.0, end: 140.0),
            child:
                // Adobe XD layer: 'Contact' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 19.5, start: 3.3),
                  Pin(size: 19.5, start: 0.9),
                  child:
                      // Adobe XD layer: 'phone' (shape)
                      SvgPicture.string(
                    _svg_bg27x,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 26.0, start: 0.0),
                  Pin(size: 20.4, end: 1.1),
                  child:
                      // Adobe XD layer: 'mail' (shape)
                      SvgPicture.string(
                    _svg_dproit,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 40.0, end: 0.0),
                  Pin(size: 22.0, end: 0.0),
                  child: Text(
                    'votrenom@domaine.com',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 18,
                      color: const Color(0xff292929),
                      fontWeight: FontWeight.w300,
                    ),
                    softWrap: false,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 177.0, start: 36.0),
                  Pin(size: 22.0, start: 0.0),
                  child: Text(
                    '+225 00 00 000 000',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 18,
                      color: const Color(0xff292929),
                      fontWeight: FontWeight.w300,
                    ),
                    softWrap: false,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 76.0, middle: 0.8218),
            child:
                // Adobe XD layer: 'Menu' (group)
                Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xfffcfcfc),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15.0),
                      topRight: Radius.circular(15.0),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0x29000000),
                        offset: Offset(0, 0),
                        blurRadius: 6,
                      ),
                    ],
                  ),
                  margin: EdgeInsets.fromLTRB(0.0, 18.0, 0.0, 0.0),
                ),
                Pinned.fromPins(
                  Pin(size: 85.0, middle: 0.5),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Bouton lavage' (component)
                      PageLink(
                    links: [
                      PageLinkInfo(
                        transition: LinkTransition.Fade,
                        ease: Curves.easeOut,
                        duration: 0.3,
                        pageBuilder: () => XDAcceuil(),
                      ),
                    ],
                    child: XDBoutonLavage(),
                  ),
                ),
                Align(
                  alignment: Alignment(0.48, 0.417),
                  child: SizedBox(
                    width: 24.0,
                    height: 28.0,
                    child:
                        // Adobe XD layer: 'icon_support' (component)
                        XDIconSupport(),
                  ),
                ),
                Align(
                  alignment: Alignment(-0.466, 0.472),
                  child: SizedBox(
                    width: 22.0,
                    height: 23.0,
                    child:
                        // Adobe XD layer: 'icon_profil' (component)
                        XDIconProfil(),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 33.0, start: 27.0),
                  Pin(size: 26.0, middle: 0.76),
                  child:
                      // Adobe XD layer: 'icon_card' (component)
                      XDIconCard(),
                ),
                Pinned.fromPins(
                  Pin(size: 27.0, end: 31.0),
                  Pin(size: 27.0, middle: 0.7551),
                  child:
                      // Adobe XD layer: '25376' (component)
                      PageLink(
                    links: [
                      PageLinkInfo(
                        transition: LinkTransition.Fade,
                        ease: Curves.easeOut,
                        duration: 0.3,
                        pageBuilder: () => XDPresentation(),
                      ),
                    ],
                    child: XD(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_yerup1 =
    '<svg viewBox="31.0 802.5 331.0 1.0" ><path transform="translate(31.0, 802.5)" d="M 0 0 L 331 0" fill="none" stroke="#dbdbdb" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_bg27x =
    '<svg viewBox="60.3 824.9 19.5 19.5" ><path transform="translate(60.25, 824.85)" d="M 19.22328948974609 16.20991325378418 L 16.47463226318359 18.93637275695801 C 16.06904602050781 19.35224723815918 15.53133487701416 19.49357986450195 15.00770378112793 19.49411964416504 C 12.69170475006104 19.42480850219727 10.50241470336914 18.28711128234863 8.705174446105957 17.11909484863281 C 5.754536151885986 14.97258281707764 3.047031879425049 12.31110382080078 1.348343372344971 9.094586372375488 C 0.6963762640953064 7.745705127716064 -0.0682230219244957 6.024813175201416 0.004879605025053024 4.51943826675415 C 0.01137761492282152 3.953028202056885 0.164080873131752 3.397447824478149 0.562625527381897 3.032475471496582 L 3.311284303665161 0.2854388654232025 C 3.882025957107544 -0.1997464895248413 4.433815479278564 -0.03242252767086029 4.799328327178955 0.5334465503692627 L 7.010276794433594 4.726291656494141 C 7.243123054504395 5.222848415374756 7.109371662139893 5.755144596099854 6.762269020080566 6.110369682312012 L 5.74966287612915 7.122436046600342 C 5.687390327453613 7.207993507385254 5.647318840026855 7.305463790893555 5.646236419677734 7.411598205566406 C 6.034492492675781 8.914807319641113 7.210631847381592 10.29996776580811 8.249772071838379 11.2535514831543 C 9.288912773132324 12.20713329315186 10.40602874755859 13.49861526489258 11.85562705993652 13.80456352233887 C 12.03486347198486 13.8543815612793 12.25417327880859 13.87225151062012 12.38250827789307 13.7531213760376 L 13.56027126312256 12.55532169342041 C 13.96639728546143 12.24774742126465 14.55284309387207 12.09720993041992 14.98604393005371 12.34900951385498 L 15.00662136077881 12.34900951385498 L 18.99477577209473 14.70345687866211 C 19.58013916015625 15.07059478759766 19.64132881164551 15.77996253967285 19.22220611572266 16.21099662780762 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_dproit =
    '<svg viewBox="57.0 857.5 26.0 20.4" ><path transform="translate(54.75, 851.84)" d="M 25.00150489807129 5.624999523162842 L 5.500568866729736 5.624999523162842 C 3.706084251403809 5.62682056427002 2.251821041107178 7.081085205078125 2.250000476837158 8.875572204589844 L 2.250000238418579 22.80482482910156 C 2.251821041107178 24.59931182861328 3.706084728240967 26.0535774230957 5.500569343566895 26.05539703369141 L 25.00150489807129 26.05539703369141 C 26.79599189758301 26.0535774230957 28.2502555847168 24.59931182861328 28.2520751953125 22.80482482910156 L 28.25207138061523 8.875572204589844 C 28.2502555847168 7.08108377456665 26.79599189758301 5.626818180084229 25.00150489807129 5.625000476837158 Z M 24.17854309082031 11.00107288360596 L 15.82100009918213 17.50139045715332 C 15.48572540283203 17.76204872131348 15.01634693145752 17.76204872131348 14.68107223510742 17.50138854980469 L 6.323528289794922 11.00107288360596 C 5.918598651885986 10.68633937835693 5.845602512359619 10.10292053222656 6.160420417785645 9.698055267333984 C 6.475238800048828 9.293190956115723 7.058657169342041 9.220193862915039 7.463521480560303 9.535012245178223 L 15.25062465667725 15.59215545654297 L 23.03861808776855 9.535097122192383 C 23.44341659545898 9.220193862915039 24.02683448791504 9.293190956115723 24.34165191650391 9.698055267333984 C 24.65647315979004 10.10292053222656 24.58347320556641 10.68633937835693 24.17860984802246 11.00115871429443 Z" fill="#000000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
