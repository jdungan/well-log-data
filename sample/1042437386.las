~Version Information Block
 VERS.                2.00:     CWLS LOG ASCII STANDARD - VERSION 2.000000
 WRAP.                  NO:     One Line Per Depth Step
#
~Well Information Block
#MNEM.UNIT                     Data                         Information
#----------   ------------------------------------------   ----------------
 STRT.FT                                     2450.0000:     START DEPTH
 STOP.FT                                     2550.0000:     STOP DEPTH
 STEP.FT                                        0.5000:     STEP LENGTH
 NULL.                                       -999.2500:     NULL VALUE
 COMP.                      Drillers & Producers, Inc.:     COMPANY
 LEAS.                                           Berry:     LEASE
 WELL.                                               2:     WELL
 FLD .                                         Peabody:     FIELD
 LOC .                                       09-22S-4E:     LOCATION
 LOC1.                                        SE NE NW:     QUARTERS
 LOC2.                                750 FNL 2190 FWL:     FOOTAGES
 SEC .                                               9:     SECTION
 TWP .                                             22S:     TOWNSHIP
 RANG.                                              4E:     RANGE
 CNTY.                                          Marion:     COUNTY
 STAT.                                          KANSAS:     STATE
 CTRY.                                             USA:     COUNTRY
 SRVC.                                        Log-Tech:     SERVICE COMPANY
 DATE.                                     05-AUG-2008:     DATE
 API .                                    15-115-21389:     API NUMBER
 UWI .                                    15-115-21389:     UWI NUMBER
 TVD .                                              NO:     TVD flag
 WSTA.                                             LOC:     Well status
#
~Curve Information Block
#MNEM.UNIT       API CODE      Curve Description
#----------    -------------   -------------------
 DEPT.FT                   :   Depth in Feet
 GR  .GAPI                 :   Gamma Ray
 SP  .MV                   :   Spontaneous Potential
 RSHA.OHMM                 :   Shallow Resistivity
 RM  .OHMM                 :   
 RDEP.OHMM                 :   
#
~Parameter Information Block
#MNEM.UNIT            Value               Description
#----------    --------------------    -------------------
 RUN .                         ONE:    Run Number
 PDAT.                         UNK:    Permanent Datum
 EPD .FT                    0.0000:    Elevation Of Perm. Datum
 WSTA.                         LOC:    
 E   .FT                    0.0000:    E (Stretch Coefficient Of The Cable)
 TD  .FT                 2550.0000:    Total Depth
#
~Other Information Block
<DescLogPlotStart>   NEURALOG PLOT DEFINITION
PLOTDEFVERSION: 3
LASFILE: C:\Documents and Settings\drl.KGSLOGIN\Desktop\las\Berry 2-DIL.las
DEPTHSCALE: 240.000000
RESOLUTION: 300
DEPTHLABELFREQ: 100.000000
HEAVYGRIDFREQ: 100.000000
MEDIUMGRIDFREQ: 50.000000
LIGHTGRIDFREQ: 10.000000
#
#   TRACK 1
#
STARTTRACK: 
 LEFTX: 0.500000 inch
 RIGHTX: 3.000000 inch
 SCALETYPE: LINEAR
 NUMCHARTDIVISIONS: 1
CURVE: GR    0.000000   150.000000 (0,0,255)      Solid             2     Y    
CURVE: SP    -200.000000 0.000000   (0,131,131)    Dot               2     N   
ENDTRACK: 
#
#   TRACK 2
#
STARTTRACK: 
 LEFTX: 3.500000 inch
 RIGHTX: 8.500000 inch
 SCALETYPE: LOG
 NUMCYCLES: 4
 STARTCYCLE: 2
CURVE: RSHA  0.200000   2000.000000 (255,0,255)    Solid             2     N   
CURVE: RM    0.200000   2000.000000 (255,0,0)      Dot               2     N   
CURVE: RDEP  0.200000   2000.000000 (255,131,0)    Short_Dash        2     N   
ENDTRACK: 
<DescLogPlotEnd>
~A DEPTH     GR               SP               RSHA             RM               RDEP            
    2450.000 142.52988048     -53.78486056     17.74028407      18.18199264      18.86526193     
    2450.500 141.93227092     -53.78486056     17.74028407      18.18199264      18.86526193     
    2451.000 140.63522753     -53.75956235     13.75938314      17.37444855      17.44794337     
    2451.500 138.31830510     -53.78486056     13.04515433      14.21779994      13.98542262     
    2452.000 132.63950187     -53.78486056     13.53538406      13.04515433      11.97809575     
    2452.500 130.80837384     -53.78486056     12.88572229      11.87328504      11.00363939     
    2453.000 131.31569183     -53.78486056     12.88572229      9.71782868       10.44493999     
    2453.500 134.89018626     -53.78486056     12.34289909      9.53383532       10.07105825     
    2454.000 134.54919526     -53.78597353     11.67844812      8.69389201       9.35959302      
    2454.500 130.74275849     -53.78404656     10.71524137      8.58763915       9.07623705      
    2455.000 129.96452009     -53.13960817     10.20093881      8.58763915       9.07623705      
    2455.500 128.72430971     -52.18304884     10.70009925      8.64060226       9.08190219      
    2456.000 126.16211917     -51.66522282     11.05588248      8.85574132       9.01506352      
    2456.500 127.12075765     -51.72126617     11.98487385      9.13221352       9.01947754      
    2457.000 129.80971418     -50.29917104     13.39155668      9.47539708       9.07623705      
    2457.500 132.91388237     -50.29487446     14.21779994      9.86174785       9.10418226      
    2458.000 131.55693986     -49.57091566     12.80673846      10.01450440      9.35959302      
    2458.500 129.86168389     -49.53806278     11.11791425      9.95311987       9.95311987      
    2459.000 130.61899089     -49.59363256     11.12161836      9.64927216       9.77121465      
    2459.500 132.82843043     -48.41359564     11.03639103      9.47867573       9.53383532      
    2460.000 136.02865477     -48.46770048     11.03196361      9.18864503       9.07623705      
    2460.500 139.48298122     -48.22637159     10.35799403      9.07623705       8.64060226      
    2461.000 136.30845024     -46.77773920     9.36675089       8.80145951       8.43068973      
    2461.500 132.77036841     -46.34231788     8.23001231       8.53500069       7.92794880      
    2462.000 144.95259980     -45.30226596     8.76953936       8.17545574       7.36407348      
    2462.500 152.00855171     -45.30067220     9.78123271       8.51733734       7.35624726      
    2463.000 152.67481363     -44.20409998     10.64956163      7.73864434       7.19389994      
    2463.500 148.69127718     -42.86544652     8.80179773       6.71528901       6.88249043      
    2464.000 147.10083928     -41.55002771     7.50116630       5.86569822       6.12366331      
    2464.500 146.21424463     -40.90075612     7.14113064       5.44850046       5.25116458      
    2465.000 146.38468704     -39.75596781     7.22948619       4.51684377       4.90775793      
    2465.500 148.35284910     -37.46573328     6.84249654       4.18270497       4.61509732      
    2466.000 150.38918757     -35.97188320     7.22504736       3.95753887       4.39358515      
    2466.500 152.99375792     -35.98414264     7.28105604       3.86139546       4.31328710      
    2467.000 154.25722490     -36.25513057     7.37309204       3.83772680       4.18270497      
    2467.500 154.48543159     -37.37359436     6.96264900       3.88521009       4.15706682      
    2468.000 154.48281405     -38.94700649     6.75670465       4.08109143       4.15567396      
    2468.500 154.48147911     -39.87521143     7.36407348       4.31328710       4.26452429      
    2469.000 154.93878876     -41.68617688     8.02603946       4.58680879       4.47665148      
    2469.500 157.47011399     -42.55697695     8.96531134       4.81806275       4.67266535      
    2470.000 159.44021319     -45.42698249     9.35959302       5.15519324       4.66993254      
    2470.500 156.88672643     -46.60070393     9.18853521       5.51591348       5.36126959      
    2471.000 154.03254193     -46.61682234     9.65179524       5.97489663       5.68332119      
    2471.500 151.74385306     -46.67467042     10.26385173      6.39297333       6.02026206      
    2472.000 148.57824815     -46.87987772     10.71524137      6.79837572       6.37717878      
    2472.500 142.26362101     -46.87956270     11.25161153      7.38674704       6.75525563      
    2473.000 132.07169373     -46.88390771     12.57275109      8.02603946       7.15574711      
    2473.500 126.87048452     -46.92061401     17.23552186      8.87330791       7.57998210      
    2474.000 126.38128186     -45.54063518     16.61645264      9.31697687       7.83105696      
    2474.500 128.25279653     -45.55207865     12.65022023      8.96531134       7.78305601      
    2475.000 132.21537177     -45.55112882     12.04304393      8.58763915       7.75916598      
    2475.500 136.10546428     -45.55112882     11.25547361      7.82985334       7.50116630      
    2476.000 139.92866507     -45.55112882     11.32489023      6.88566490       7.09735864      
    2476.500 142.27907789     -45.55112882     10.32503634      6.05533451       6.47207210      
    2477.000 144.58384345     -45.55112882     8.85574132       5.32513223       5.93827313      
    2477.500 148.24927242     -45.55112882     8.43068973       4.64608016       5.33250409      
    2478.000 150.87871256     -45.55084111     8.53500069       4.01622492       4.84777751      
    2478.500 153.48284663     -45.55429018     5.82974406       3.49961807       4.75917855      
    2479.000 154.25497844     -45.81673307     5.41510354       3.39038217       4.70101400      
    2479.500 152.65372078     -46.07917595     5.61860015       3.63552266       4.50297935      
    2480.000 148.22321802     -46.08264620     7.57066684       4.13112210       4.64378651      
    2480.500 132.58120936     -46.08288663     11.60686435      5.15136665       5.03002393      
    2481.000 114.70660944     -46.13297546     16.55403085      6.43088019       5.63831759      
    2481.500 99.50577879      -46.21688018     18.53437589      8.02667215       6.31980939      
    2482.000 90.00368181      -46.30456596     20.00363694      10.01845219      7.08367169      
    2482.500 83.42563905      -45.56916643     33.31838753      12.06585347      7.93986044      
    2483.000 90.76611619      -45.22327135     31.87324125      12.67356573      8.89953496      
    2483.500 103.04685075     -44.90406912     21.99978891      11.56022644      9.53383532      
    2484.000 121.75607640     -44.58567845     17.65633988      10.57652012      9.53383532      
    2484.500 134.60308911     -44.26737494     13.12560856      9.67475170       9.53701467      
    2485.000 145.39182737     -43.94907144     12.41902226      8.80645753       8.97996964      
    2485.500 155.21720348     -43.63076793     11.96785283      8.48268487       8.58763915      
    2486.000 160.02200034     -43.31211243     11.96450249      8.07553898       8.22587676      
    2486.500 167.00878707     -42.99427713     12.77284554      8.12737014       8.17545574      
    2487.000 180.14817602     -42.95775197     14.03152572      8.20434978       8.17676362      
    2487.500 193.97164629     -43.05242818     14.57811740      8.28173749       8.17323123      
    2488.000 202.97718763     -43.14586615     14.57180352      8.52844361       8.74751042      
    2488.500 205.68264201     -43.23915112     15.01133800      9.04142613       9.13221352      
    2489.000 206.09230196     -43.33259849     16.22715105      9.58526434       9.47539708      
    2489.500 214.10303984     -43.43045102     17.54143642      10.28379946      9.89211161      
    2490.000 224.06488767     -43.76557531     17.84969488      11.07165801      10.07626750     
    2490.500 234.00590391     -44.10670666     19.43562924      11.68548682      10.36028252     
    2491.000 241.26827388     -44.44802351     21.18003548      11.95668742      10.63404096     
    2491.500 242.56644061     -44.78935323     20.58309538      12.49561491      10.91503315     
    2492.000 240.99248728     -45.12848024     20.08106417      12.26724253      11.20345023     
    2492.500 239.45786193     -45.46647364     19.81639522      11.81829695      11.49948839     
    2493.000 243.64766683     -46.98064663     19.93861016      11.61046802      11.67844812     
    2493.500 252.13344078     -48.85042495     18.74823633      11.39473496      12.17526980     
    2494.000 257.76563704     -51.73381745     17.30930625      11.67844812      12.68636119     
    2494.500 241.42430279     -54.89133073     18.03565987      13.43806012      13.21890708     
    2495.000 208.66533865     -58.04759106     27.45027405      16.08078359      14.29815850     
    2495.500 110.65737052     -61.20349204     71.67923956      19.42697110      16.32221125     
    2496.000 70.94621514      -64.35939303     131.66021554     24.89788623      19.04806567     
    2496.500 32.17131474      -67.51529402     138.25707022     31.89882901      22.29506229     
    2497.000 22.80876494      -70.67186059     129.01468015     40.86755706      26.51973248     
    2497.500 20.01992032      -73.82150830     117.11674268     52.35794766      32.38013767     
    2498.000 18.65696698      -76.23507056     110.17766209     67.07899569      39.55693560     
    2498.500 18.62679074      -78.93582654     103.02075555     77.11605696      45.71759482     
    2499.000 18.62559171      -76.71532990     97.94840543      80.50751177      48.03273750     
    2499.500 18.62562009      -80.62316286     92.14850815      80.50751177      50.45441262     
    2500.000 18.62077551      -82.78204024     91.43811579      75.47428736      50.45441262     
    2500.500 18.37685710      -84.61000057     89.37792394      69.46258751      50.45441262     
    2501.000 16.79156951      -84.84899881     86.67206179      63.17171284      49.49875183     
    2501.500 17.27620272      -85.75183062     84.56647340      58.85619132      49.03076424     
    2502.000 17.63156617      -87.01033064     79.73574358      55.79159910      47.33833727     
    2502.500 19.27110906      -88.23653522     73.75401544      52.14320317      45.53721270     
    2503.000 20.49619904      -88.84542302     68.22103300      48.47800434      43.35408210     
    2503.500 21.40377789      -88.84478429     63.10313161      45.07043607      41.27561445     
    2504.000 22.18092664      -88.83347701     59.56556735      41.90238925      39.29679203     
    2504.500 22.04212160      -89.10245483     57.05631168      38.95685192      37.41283769     
    2505.000 21.18280613      -90.18447076     56.01353903      36.21632575      35.32043066     
    2505.500 22.29552638      -90.99864422     50.34876655      33.67284935      33.87399872     
    2506.000 24.37949690      -90.93720470     41.15455767      31.04210932      32.15872051     
    2506.500 24.93899852      -91.50447261     41.18965860      30.66577832      30.66272655     
    2507.000 23.09821643      -91.49739764     43.61256542      30.48318152      29.73443120     
    2507.500 20.07430149      -91.47641498     50.30355235      30.11263755      29.73253191     
    2508.000 20.38390542      -92.23079325     56.78977719      29.91781430      29.77987293     
    2508.500 20.35650940      -92.81769084     62.98163696      29.73035081      29.88762957     
    2509.000 20.41110163      -92.82664161     66.53641054      29.73869383      29.99545579     
    2509.500 20.83861885      -92.82146733     68.19307527      29.73682456      30.10360975     
    2510.000 21.49014591      -93.11568626     62.25004205      29.73443120      30.21215368     
    2510.500 23.56833039      -93.04692996     55.88745289      30.28798044      30.47477747     
    2511.000 25.38230662      -94.20522026     48.03273750      31.23355734      31.12559391     
    2511.500 27.12113752      -94.16015124     48.32897293      32.60716490      31.85052441     
    2512.000 27.94484479      -94.15670651     53.32504091      33.62514568      32.59233891     
    2512.500 26.48859192      -94.15608229     52.99818176      35.32043066      33.35143064     
    2513.000 24.62417410      -94.14876402     57.77487821      37.10118714      34.12820199     
    2513.500 24.31604850      -94.60909066     58.13456111      37.10118714      34.92306472     
    2514.000 23.28350029      -94.95357069     59.18559340      37.10118714      35.73657038     
    2514.500 21.56880151      -94.95386828     59.20045652      37.10223356      36.56792304     
    2515.000 21.73953942      -94.95351926     60.67446612      37.09483632      37.33569131     
    2515.500 22.99677694      -94.95351926     63.73350153      37.56023147      37.32836278     
    2516.000 24.28774469      -94.95351926     64.91999240      38.73284473      37.33000371     
    2516.500 25.32957023      -94.95351926     61.04866771      39.92635236      37.33000371     
    2517.000 26.39943642      -94.95351926     55.67020058      41.44306734      37.33000371     
    2517.500 24.15343626      -94.95351926     54.98982431      40.95545023      37.33000371     
    2518.000 19.01520281      -94.95351926     58.47693504      40.00842832      37.32597465     
    2518.500 19.18074018      -94.95203941     53.32504091      39.45391238      37.36339831     
    2519.000 20.13931975      -94.94707541     50.14514917      38.77963618      36.42311837     
    2519.500 21.10889252      -94.41845554     49.53229761      36.69346123      35.97797132     
    2520.000 20.62750256      -93.87389777     47.15488151      34.71951338      34.08504393     
    2520.500 19.97577873      -93.43525003     45.72729622      32.83544920      32.97482939     
    2521.000 20.06194798      -93.05345576     45.72729622      30.99140445      31.23355734     
    2521.500 20.63473761      -92.66975342     44.07112747      29.19099875      30.10232838     
    2522.000 19.58875930      -92.28615745     41.72188530      28.30725906      30.10232838     
    2522.500 18.62836766      -91.90080019     40.00440897      27.61956991      30.10232838     
    2523.000 18.04150375      -91.01446540     37.80546975      27.90716435      30.10038850     
    2523.500 19.32110389      -89.84695531     49.22868632      29.35362700      30.65811309     
    2524.000 24.69868056      -88.68107711     57.05631168      30.87506160      31.35904521     
    2524.500 32.86157140      -87.51535701     52.67332613      32.47535403      32.07549781     
    2525.000 45.89626963      -86.34956328     43.53250988      34.47483169      32.80826519     
    2525.500 50.26739061      -85.18625795     46.29306939      36.62681696      34.25112616     
    2526.000 52.13741742      -84.10607441     50.45441262      38.49542936      35.75744211     
    2526.500 52.09127795      -83.13403415     51.39369413      40.43626031      37.10118714     
    2527.000 50.55474506      -82.15812092     51.71065781      41.69866187      39.21207718     
    2527.500 46.29265608      -81.16263423     57.34937650      42.76776367      39.45964992     
    2528.000 41.98535118      -80.60452325     60.05713128      42.74067702      39.45241244     
    2528.500 44.60113487      -80.61020950     57.94050547      39.62999565      39.45653534     
    2529.000 49.71273294      -80.61060207     49.53229761      38.47875351      39.69723907     
    2529.500 54.83951738      -80.61190687     45.44700793      39.44027525      40.43626031     
    2530.000 58.36626818      -80.83023009     41.64930873      39.70233317      41.23544490     
    2530.500 50.20314109      -82.30028222     50.19053309      39.69977133      40.18306951     
    2531.000 41.84799395      -82.98262760     59.99169932      39.49498565      40.18840375     
    2531.500 39.46043090      -83.60687665     57.79617493      39.14120447      40.18840375     
    2532.000 41.45323598      -85.22892492     53.65391591      38.79059234      39.94206644     
    2532.500 43.45326831      -85.62925218     41.69866187      38.16512401      39.21207718     
    2533.000 45.23742877      -86.46934001     38.73284473      36.04965868      36.42967835     
    2533.500 37.16499995      -87.05765140     47.15488151      34.05145208      34.90370997     
    2534.000 33.17491575      -89.38042596     33.62514568      32.16400462      34.45159691     
    2534.500 33.37460654      -91.20230436     33.83252423      30.28798044      34.46236536     
    2535.000 34.11332973      -92.62366359     33.41903827      28.58710538      33.62514568     
    2535.500 34.36437984      -93.88757554     33.41903827      26.89298254      32.20865472     
    2536.000 34.36958886      -94.71771607     33.41903827      25.29968018      30.28798044     
    2536.500 33.65286888      -96.99041086     33.41903827      23.80286928      29.00861365     
    2537.000 28.58949011      -98.25231552     33.41903827      22.38776354      28.31209910     
    2537.500 19.84749088      -98.78480123     31.79889495      21.86493984      28.30147082     
    2538.000 11.14994236      -100.24519179    16.03040699      22.54755327      28.30725906     
    2538.500 2.33139365       -100.97658410    0.37598741       23.68433729      28.30725906     
    2539.000 1.09974500       -102.77057349    0.44071127       27.42634898      29.55217216     
    2539.500 1.09404732       -104.26551117    0.44071127       33.22392015      30.10232838     
    2540.000 1.09561753       -104.56723330    0.44071127       41.51593406      30.10232838     
    2540.500 1.09561753       -105.55240542    0.44071127       51.87746580      31.04210932     
    2541.000 1.09561753       -106.37767273    0.44071127       59.56556735      32.80826519     
    2541.500 1.09561753       -108.24481615    0.44071127       62.18517653      38.25946924     
    2542.000 1.09561753       -109.02162193    0.44071127       55.12135768      38.02495545     
    2542.500 1.09561753       -112.33685595    0.44071127       47.58342580      41.18903949     
    2543.000 1.09561753       -114.27747772    0.44071127       43.10611394      43.53250988     
    2543.500 1.09561753       -114.30818000    0.44071127       40.77411763      45.16843768     
    2544.000 1.09561753       -116.31210173    0.44071127       39.21647546      47.44570288     
    2544.500 1.09561753       -117.91368113    0.44071127       39.35116420      49.53229761     
    2545.000 1.09561753       -118.85245773    0.44071127       39.45962055      64.04776230     
    2545.500 1.09561753       -118.83614063    0.44071127       39.56837581      1393.80735546   
    2546.000 1.09561753       -116.68526485    0.44071127       39.67743082      1340.82526010   
    2546.500 1.09561753       -114.35721291    0.44071127       39.78678640      1361.88617143   
    2547.000 1.09561753       -112.21763093    0.44071127       39.94206644      1361.88617143   
    2547.500 1.09561753       -109.57247017    0.44071127       39.02798219      1361.88617143   
    2548.000 1.09561753       -107.23839073    0.44071127       37.33000371      1361.88617143   
    2548.500 1.09561753       -105.23642290    0.44071127       44.22332786      1361.88617143   
    2549.000 1.09561753       -102.99970841    0.44071127       78.24503294      1361.88617143   
    2549.500 1.09561753       -103.92489789    0.44071127       1156.92676313    1361.88617143   
    2550.000 1.09561753       -105.59954549    0.44071127       1969.49293954    1361.88617143   
