function map = rainbow(m)
%   RAINBOW a colour map adopted from matplotlib
%   rainbow(M) returns an M-by-3 matrix containing a colormap. 
%   written by Ruix.Li in Jan, 2021

% USAGE:
% colormap(rainbow(128))
% colormap rainbow

if nargin < 1
   f = get(groot,'CurrentFigure');
   if isempty(f)
      m = size(get(groot,'DefaultFigureColormap'),1);
   else
      m = size(f.Colormap,1);
   end
end

values = [
   0.500000000000000                   0   1.000000000000000
   0.492156862745098   0.012319659535238   0.999981027348727
   0.484313725490196   0.024637449195382   0.999924110114831
   0.476470588235294   0.036951499389145   0.999829250458053
   0.468627450980392   0.049259941092817   0.999696451977872
   0.460784313725490   0.061560906133943   0.999525719713366
   0.452941176470588   0.073852527474874   0.999317060143023
   0.445098039215686   0.086132939496146   0.999070481184493
   0.437254901960784   0.098400278279643   0.998785992194290
   0.429411764705882   0.110652681891501   0.998463603967434
   0.421568627450980   0.122888290664714   0.998103328737044
   0.413725490196078   0.135105247481393   0.997705180173873
   0.405882352941176   0.147301698054637   0.997269173385788
   0.398039215686275   0.159475791209981   0.996795324917199
   0.390196078431373   0.171625679166360   0.996283652748429
   0.382352941176471   0.183749517816570   0.995734176295034
   0.374509803921569   0.195845467007167   0.995146916407064
   0.366666666666667   0.207911690817759   0.994521895368273
   0.358823529411765   0.219946357839669   0.993859136895274
   0.350980392156863   0.231947641453898   0.993158666136636
   0.343137254901961   0.243913720108377   0.992420509671936
   0.335294117647059   0.255842777594436   0.991644695510743
   0.327450980392157   0.267733003322468   0.990831253091560
   0.319607843137255   0.279582592596744   0.989980213280707
   0.311764705882353   0.291389746889325   0.989091608371146
   0.303921568627451   0.303152674113044   0.988165472081259
   0.296078431372549   0.314869588893508   0.987201839553569
   0.288235294117647   0.326538712840083   0.986200747353403
   0.280392156862745   0.338158274815817   0.985162233467507
   0.272549019607843   0.349726511206261   0.984086337302604
   0.264705882352941   0.361241666187153   0.982973099683902
   0.256862745098039   0.372701991990914   0.981822562853537
   0.249019607843137   0.384105749171926   0.980634770468978
   0.241176470588235   0.395451206870543   0.979409767601366
   0.233333333333333   0.406736643075800   0.978147600733806
   0.225490196078431   0.417960344886783   0.976848317759601
   0.217647058823529   0.429120608772609   0.975511967980437
   0.209803921568627   0.440215740830987   0.974138602104510
   0.201960784313725   0.451244057045323   0.972728272244605
   0.194117647058824   0.462203883540313   0.971281031916114
   0.186274509803922   0.473093556836010   0.969796936035009
   0.178431372549020   0.483911424100301   0.968276040915759
   0.170588235294118   0.494655843399779   0.966718404269187
   0.162745098039216   0.505325183948948   0.965124085200289
   0.154901960784314   0.515917826357751   0.963493144205983
   0.147058823529412   0.526432162877356   0.961825643172819
   0.139215686274510   0.536866597644180   0.960121645374628
   0.131372549019608   0.547219546922111   0.958381215470122
   0.123529411764706   0.557489439342886   0.956604419500441
   0.115686274509804   0.567674716144590   0.954791324886644
   0.107843137254902   0.577773831408251   0.952942000427157
   0.100000000000000   0.587785252292473   0.951056516295154
   0.092156862745098   0.597707459266094   0.949134944035901
   0.084313725490196   0.607538946338817   0.947177356564040
   0.076470588235294   0.617278221289793   0.945183828160820
   0.068627450980392   0.626923805894107   0.943154434471277
   0.060784313725490   0.636474236147141   0.941089252501372
   0.052941176470588   0.645928062486787   0.938988360615057
   0.045098039215686   0.655283850013454   0.936851838531311
   0.037254901960784   0.664540178707858   0.934679767321111
   0.029411764705882   0.673695643646557   0.932472229404356
   0.021568627450980   0.682748855215185   0.930229308546740
   0.013725490196078   0.691698439319370   0.927951089856575
   0.005882352941176   0.700543037593291   0.925637659781556
   0.001960784313725   0.709281307605854   0.923289106105489
   0.009803921568627   0.717911923064442   0.920905517944954
   0.017647058823529   0.726433574016224   0.918486985745923
   0.025490196078431   0.734844967046976   0.916033601280334
   0.033333333333333   0.743144825477394   0.913545457642601
   0.041176470588235   0.751331889556873   0.911022649246088
   0.049019607843137   0.759404916654707   0.908465271819524
   0.056862745098039   0.767362681448697   0.905873422403367
   0.064705882352941   0.775203976111130   0.903247199346129
   0.072549019607843   0.782927610492103   0.900586702300637
   0.080392156862745   0.790532412300163   0.897892032220258
   0.088235294117647   0.798017227280239   0.895163291355062
   0.096078431372549   0.805380919388833   0.892400583247948
   0.103921568627451   0.812622370966446   0.889604012730710
   0.111764705882353   0.819740482907221   0.886773685920062
   0.119607843137255   0.826734174825764   0.883909710213612
   0.127450980392157   0.833602385221120   0.881012194285784
   0.135294117647059   0.840344071637893   0.878081248083698
   0.143137254901961   0.846958210824467   0.875116982822993
   0.150980392156863   0.853443798888316   0.872119510983611
   0.158823529411765   0.859799851448372   0.869088946305528
   0.166666666666667   0.866025403784439   0.866025403784439
   0.174509803921569   0.872119510983611   0.862928999667390
   0.182352941176471   0.878081248083698   0.859799851448372
   0.190196078431373   0.883909710213612   0.856638077863863
   0.198039215686274   0.889604012730710   0.853443798888316
   0.205882352941176   0.895163291355062   0.850217135729614
   0.213725490196078   0.900586702300637   0.846958210824467
   0.221568627450980   0.905873422403367   0.843667147833766
   0.229411764705882   0.911022649246088   0.840344071637893
   0.237254901960784   0.916033601280334   0.836989108331978
   0.245098039215686   0.920905517944954   0.833602385221120
   0.252941176470588   0.925637659781556   0.830184030815551
   0.260784313725490   0.930229308546740   0.826734174825764
   0.268627450980392   0.934679767321111   0.823252948157587
   0.276470588235294   0.938988360615057   0.819740482907221
   0.284313725490196   0.943154434471277   0.816196912356222
   0.292156862745098   0.947177356564040   0.812622370966446
   0.300000000000000   0.951056516295154   0.809016994374947
   0.307843137254902   0.954791324886644   0.805380919388833
   0.315686274509804   0.958381215470122   0.801714283980067
   0.323529411764706   0.961825643172819   0.798017227280239
   0.331372549019608   0.965124085200289   0.794289889575286
   0.339215686274510   0.968276040915759   0.790532412300163
   0.347058823529412   0.971281031916114   0.786744938033483
   0.354901960784314   0.974138602104510   0.782927610492103
   0.362745098039216   0.976848317759601   0.779080574525670
   0.370588235294118   0.979409767601366   0.775203976111130
   0.378431372549020   0.981822562853537   0.771297962347181
   0.386274509803922   0.984086337302604   0.767362681448697
   0.394117647058823   0.986200747353403   0.763398282741103
   0.401960784313726   0.988165472081259   0.759404916654707
   0.409803921568627   0.989980213280707   0.755382734718994
   0.417647058823529   0.991644695510743   0.751331889556873
   0.425490196078431   0.993158666136636   0.747252534878891
   0.433333333333333   0.994521895368273   0.743144825477394
   0.441176470588235   0.995734176295034   0.739008917220659
   0.449019607843137   0.996795324917199   0.734844967046976
   0.456862745098039   0.997705180173873   0.730653132958693
   0.464705882352941   0.998463603967434   0.726433574016224
   0.472549019607843   0.999070481184493   0.722186450332009
   0.480392156862745   0.999525719713366   0.717911923064442
   0.488235294117647   0.999829250458053   0.713610154411752
   0.496078431372549   0.999981027348727   0.709281307605854
   0.503921568627451   0.999981027348727   0.704925546906147
   0.511764705882353   0.999829250458053   0.700543037593291
   0.519607843137255   0.999525719713366   0.696133945962927
   0.527450980392157   0.999070481184493   0.691698439319370
   0.535294117647059   0.998463603967434   0.687236685969263
   0.543137254901961   0.997705180173873   0.682748855215185
   0.550980392156863   0.996795324917199   0.678235117349234
   0.558823529411765   0.995734176295035   0.673695643646557
   0.566666666666667   0.994521895368273   0.669130606358858
   0.574509803921569   0.993158666136636   0.664540178707858
   0.582352941176471   0.991644695510743   0.659924534878723
   0.590196078431372   0.989980213280707   0.655283850013454
   0.598039215686275   0.988165472081259   0.650618300204242
   0.605882352941177   0.986200747353403   0.645928062486787
   0.613725490196078   0.984086337302604   0.641213314833578
   0.621568627450980   0.981822562853537   0.636474236147141
   0.629411764705882   0.979409767601366   0.631711006253251
   0.637254901960784   0.976848317759601   0.626923805894107
   0.645098039215686   0.974138602104510   0.622112816721474
   0.652941176470588   0.971281031916114   0.617278221289793
   0.660784313725490   0.968276040915759   0.612420203049250
   0.668627450980392   0.965124085200289   0.607538946338817
   0.676470588235294   0.961825643172819   0.602634636379256
   0.684313725490196   0.958381215470122   0.597707459266094
   0.692156862745098   0.954791324886644   0.592757601962555
   0.700000000000000   0.951056516295154   0.587785252292473
   0.707843137254902   0.947177356564040   0.582790598933161
   0.715686274509804   0.943154434471278   0.577773831408251
   0.723529411764706   0.938988360615057   0.572735140080505
   0.731372549019608   0.934679767321111   0.567674716144590
   0.739215686274510   0.930229308546740   0.562592751619823
   0.747058823529412   0.925637659781556   0.557489439342886
   0.754901960784314   0.920905517944954   0.552364972960506
   0.762745098039216   0.916033601280334   0.547219546922111
   0.770588235294118   0.911022649246088   0.542053356472449
   0.778431372549020   0.905873422403367   0.536866597644180
   0.786274509803921   0.900586702300638   0.531659467250436
   0.794117647058824   0.895163291355062   0.526432162877356
   0.801960784313726   0.889604012730710   0.521184882876585
   0.809803921568627   0.883909710213612   0.515917826357751
   0.817647058823529   0.878081248083698   0.510631193180907
   0.825490196078431   0.872119510983611   0.505325183948948
   0.833333333333333   0.866025403784439   0.500000000000000
   0.841176470588235   0.859799851448373   0.494655843399779
   0.849019607843137   0.853443798888316   0.489292916933924
   0.856862745098039   0.846958210824467   0.483911424100302
   0.864705882352941   0.840344071637893   0.478511569101287
   0.872549019607843   0.833602385221119   0.473093556836010
   0.880392156862745   0.826734174825764   0.467657592892587
   0.888235294117647   0.819740482907221   0.462203883540313
   0.896078431372549   0.812622370966446   0.456732635721841
   0.903921568627451   0.805380919388833   0.451244057045323
   0.911764705882353   0.798017227280240   0.445738355776538
   0.919607843137255   0.790532412300163   0.440215740830987
   0.927450980392157   0.782927610492103   0.434676421765965
   0.935294117647059   0.775203976111130   0.429120608772609
   0.943137254901961   0.767362681448697   0.423548512667924
   0.950980392156863   0.759404916654707   0.417960344886784
   0.958823529411765   0.751331889556873   0.412356317473904
   0.966666666666667   0.743144825477394   0.406736643075800
   0.974509803921569   0.734844967046976   0.401101534932719
   0.982352941176471   0.726433574016224   0.395451206870543
   0.990196078431373   0.717911923064442   0.389785873292679
   0.998039215686275   0.709281307605854   0.384105749171926
   1.000000000000000   0.700543037593291   0.378411050042310
   1.000000000000000   0.691698439319370   0.372701991990914
   1.000000000000000   0.682748855215186   0.366978791649672
   1.000000000000000   0.673695643646557   0.361241666187153
   1.000000000000000   0.664540178707858   0.355490833300318
   1.000000000000000   0.655283850013453   0.349726511206261
   1.000000000000000   0.645928062486787   0.343948918633928
   1.000000000000000   0.636474236147141   0.338158274815817
   1.000000000000000   0.626923805894106   0.332354799479660
   1.000000000000000   0.617278221289793   0.326538712840083
   1.000000000000000   0.607538946338817   0.320710235590255
   1.000000000000000   0.597707459266094   0.314869588893508
   1.000000000000000   0.587785252292473   0.309016994374947
   1.000000000000000   0.577773831408251   0.303152674113044
   1.000000000000000   0.567674716144590   0.297276850631203
   1.000000000000000   0.557489439342886   0.291389746889325
   1.000000000000000   0.547219546922111   0.285491586275342
   1.000000000000000   0.536866597644180   0.279582592596744
   1.000000000000000   0.526432162877356   0.273662990072083
   1.000000000000000   0.515917826357751   0.267733003322468
   1.000000000000000   0.505325183948948   0.261792857363040
   1.000000000000000   0.494655843399779   0.255842777594436
   1.000000000000000   0.483911424100302   0.249882989794231
   1.000000000000000   0.473093556836010   0.243913720108377
   1.000000000000000   0.462203883540313   0.237935195042619
   1.000000000000000   0.451244057045323   0.231947641453898
   1.000000000000000   0.440215740830987   0.225951286541748
   1.000000000000000   0.429120608772609   0.219946357839669
   1.000000000000000   0.417960344886783   0.213933083206497
   1.000000000000000   0.406736643075800   0.207911690817759
   1.000000000000000   0.395451206870542   0.201882409157010
   1.000000000000000   0.384105749171926   0.195845467007167
   1.000000000000000   0.372701991990914   0.189801093441826
   1.000000000000000   0.361241666187153   0.183749517816571
   1.000000000000000   0.349726511206262   0.177690969760269
   1.000000000000000   0.338158274815818   0.171625679166360
   1.000000000000000   0.326538712840084   0.165553876184130
   1.000000000000000   0.314869588893508   0.159475791209981
   1.000000000000000   0.303152674113044   0.153391654878685
   1.000000000000000   0.291389746889325   0.147301698054638
   1.000000000000000   0.279582592596744   0.141206151823091
   1.000000000000000   0.267733003322468   0.135105247481393
   1.000000000000000   0.255842777594436   0.128999216530203
   1.000000000000000   0.243913720108377   0.122888290664714
   1.000000000000000   0.231947641453898   0.116772701765856
   1.000000000000000   0.219946357839669   0.110652681891501
   1.000000000000000   0.207911690817759   0.104528463267653
   1.000000000000000   0.195845467007167   0.098400278279643
   1.000000000000000   0.183749517816570   0.092268359463302
   1.000000000000000   0.171625679166360   0.086132939496146
   1.000000000000000   0.159475791209981   0.079994251188542
   1.000000000000000   0.147301698054638   0.073852527474874
   1.000000000000000   0.135105247481393   0.067708001404708
   1.000000000000000   0.122888290664714   0.061560906133943
   1.000000000000000   0.110652681891501   0.055411474915970
   1.000000000000000   0.098400278279643   0.049259941092817
   1.000000000000000   0.086132939496146   0.043106538086296
   1.000000000000000   0.073852527474874   0.036951499389145
   1.000000000000000   0.061560906133943   0.030795058556171
   1.000000000000000   0.049259941092817   0.024637449195382
   1.000000000000000   0.036951499389145   0.018478904959130
   1.000000000000000   0.024637449195382   0.012319659535238
   1.000000000000000   0.012319659535239   0.006159946638139
   1.000000000000000   0.000000000000000   0.000000000000000
   ];

P = size(values,1);
map = interp1(1:size(values,1), values, linspace(1,P,m), 'linear');