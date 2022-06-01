from array import *

off = {}
offrate = {}
onl = {}
onlrate = {}

off['CaloTauBarrel'] = array('d', [10.0, 15.0, 20.0, 25.0, 30.0, 35.0, 40.0, 45.0, 50.0, 55.0, 60.0, 65.0, 70.0, 75.0, 80.0, 85.0, 90.0, 95.0, 100.0, 105.0, 110.0, 115.0, 120.0, 125.0, 130.0, 135.0, 140.0, 145.0, 150.0, 155.0])
offrate['CaloTauBarrel'] = array('d', [27779.7, 26858.8, 23279.4, 16272.4, 9260.1, 5116.1, 2846.2, 1717.6, 1091.5, 739.1, 531.7, 394.3, 296.3, 228.7, 181.5, 147.2, 120.6, 100.2, 82.4, 69.5, 58.2, 49.7, 43.8, 37.9, 33.0, 28.4, 24.6, 21.2, 18.9, 17.3])
onl['CaloTauBarrel'] = array('d', [10.0, 15.0, 20.0, 25.0, 30.0, 35.0, 40.0, 45.0, 50.0, 55.0, 60.0, 65.0, 70.0, 75.0, 80.0, 85.0, 90.0, 95.0, 100.0, 105.0, 110.0, 115.0, 120.0, 125.0, 130.0, 135.0, 140.0, 145.0, 150.0, 155.0])
onlrate['CaloTauBarrel'] = array('d', [27804.7, 26474.3, 18502.3, 8215.0, 3344.5, 1538.6, 815.4, 490.6, 317.0, 214.8, 154.0, 114.9, 85.4, 66.1, 51.2, 41.9, 33.6, 26.8, 21.7, 18.3, 15.9, 13.1, 11.0, 9.8, 8.6, 7.4, 6.4, 5.2, 4.4, 3.9])

off['CaloTauEndcap'] = array('d', [10.0, 15.0, 20.0, 25.0, 30.0, 35.0, 40.0, 45.0, 50.0, 55.0, 60.0, 65.0, 70.0, 75.0, 80.0, 85.0, 90.0, 95.0, 100.0, 105.0, 110.0, 115.0, 120.0, 125.0, 130.0, 135.0, 140.0, 145.0, 150.0, 155.0])
offrate['CaloTauEndcap'] = array('d', [31038.0, 31038.0, 31037.8, 31025.1, 30771.8, 29272.3, 24694.8, 17851.0, 10852.4, 6188.5, 3184.0, 1841.3, 1027.7, 644.5, 441.2, 315.1, 239.1, 184.9, 147.6, 118.7, 97.3, 80.4, 68.9, 58.6, 48.8, 40.7, 35.5, 30.7, 26.3, 23.0])
onl['CaloTauEndcap'] = array('d', [10.0, 15.0, 20.0, 25.0, 30.0, 35.0, 40.0, 45.0, 50.0, 55.0, 60.0, 65.0, 70.0, 75.0, 80.0, 85.0, 90.0, 95.0, 100.0, 105.0, 110.0, 115.0, 120.0, 125.0, 130.0, 135.0, 140.0, 145.0, 150.0, 155.0])
onlrate['CaloTauEndcap'] = array('d', [31038.0, 31035.8, 30345.6, 22404.9, 9208.7, 2820.0, 990.8, 443.5, 245.1, 154.1, 103.6, 73.9, 54.5, 38.8, 29.4, 22.4, 16.5, 12.4, 9.6, 7.5, 6.4, 5.4, 4.3, 3.7, 3.2, 2.8, 2.3, 2.1, 1.7, 1.4])


off['gmtTkMuon'] = array('d', [0.0, 3.0, 6.0, 9.0, 12.0, 15.0, 18.0, 21.0, 24.0, 27.0, 30.0, 33.0, 36.0, 39.0, 42.0, 45.0, 48.0, 51.0, 54.0, 57.0, 60.0, 63.0, 66.0, 69.0, 72.0, 75.0])
offrate['gmtTkMuon'] = array('d', [28932.5, 28163.2, 3922.6, 364.0, 110.3, 47.7, 26.5, 17.8, 12.0, 8.5, 6.4, 5.4, 4.7, 3.8, 3.5, 3.4, 2.9, 2.4, 2.2, 2.1, 2.0, 2.0, 1.8, 1.7, 1.6, 1.6])
onl['gmtTkMuon'] = array('d', [0.0, 3.0, 6.0, 9.0, 12.0, 15.0, 18.0, 21.0, 24.0, 27.0, 30.0, 33.0, 36.0, 39.0, 42.0, 45.0, 48.0, 51.0, 54.0, 57.0, 60.0, 63.0, 66.0, 69.0, 72.0, 75.0])
onlrate['gmtTkMuon'] = array('d', [28932.5, 17724.6, 1754.9, 202.9, 73.1, 33.6, 20.3, 13.8, 9.5, 6.8, 6.0, 5.1, 4.0, 3.5, 3.4, 2.9, 2.4, 2.2, 2.1, 2.0, 2.0, 1.8, 1.7, 1.6, 1.6, 1.5])

off['gmtMuon'] = array('d', [0.0, 3.0, 6.0, 9.0, 12.0, 15.0, 18.0, 21.0, 24.0, 27.0, 30.0, 33.0, 36.0, 39.0, 42.0, 45.0, 48.0, 51.0, 54.0, 57.0, 60.0, 63.0, 66.0, 69.0, 72.0, 75.0])
offrate['gmtMuon'] = array('d', [10651.9, 10651.9, 10434.8, 9349.3, 1519.7, 443.7, 231.5, 124.7, 84.9, 64.4, 54.4, 43.7, 38.5, 31.7, 27.3, 24.2, 21.1, 19.4, 17.1, 16.0, 14.6, 13.4, 12.3, 11.6, 11.3, 10.5])
onl['gmtMuon'] = array('d', [0.0, 3.0, 6.0, 9.0, 12.0, 15.0, 18.0, 21.0, 24.0, 27.0, 30.0, 33.0, 36.0, 39.0, 42.0, 45.0, 48.0, 51.0, 54.0, 57.0, 60.0, 63.0, 66.0, 69.0, 72.0, 75.0])
onlrate['gmtMuon'] = array('d', [10651.9, 5450.0, 1260.6, 482.8, 233.2, 137.6, 90.8, 70.2, 57.9, 46.9, 38.5, 34.5, 29.2, 25.5, 22.7, 20.2, 18.7, 16.6, 15.6, 14.6, 13.6, 12.9, 12.0, 11.1, 10.5, 9.9])

off['tkElectron'] = array('d', [10.0, 13.0, 16.0, 19.0, 22.0, 25.0, 28.0, 31.0, 34.0, 37.0, 40.0, 43.0, 46.0, 49.0, 52.0, 55.0, 58.0, 61.0, 64.0, 67.0, 70.0, 73.0, 76.0, 79.0, 82.0, 85.0, 88.0, 91.0, 94.0, 97.0])
offrate['tkElectron'] = array('d', [851.2, 548.8, 331.9, 181.5, 122.1, 84.3, 59.8, 43.7, 34.2, 27.7, 22.4, 17.5, 14.3, 11.8, 9.9, 8.1, 6.6, 5.6, 4.6, 3.9, 3.1, 2.9, 2.5, 2.3, 2.1, 1.8, 1.6, 1.5, 1.4, 1.4])
onl['tkElectron'] = array('d', [10.0, 13.0, 16.0, 19.0, 22.0, 25.0, 28.0, 31.0, 34.0, 37.0, 40.0, 43.0, 46.0, 49.0, 52.0, 55.0, 58.0, 61.0, 64.0, 67.0, 70.0, 73.0, 76.0, 79.0, 82.0, 85.0, 88.0, 91.0, 94.0, 97.0])
onlrate['tkElectron'] = array('d', [573.8, 324.0, 157.2, 98.1, 66.2, 44.0, 32.5, 25.8, 19.1, 14.8, 11.6, 9.2, 7.4, 5.8, 4.8, 3.7, 3.1, 2.6, 2.4, 2.1, 1.8, 1.5, 1.4, 1.4, 1.3, 1.2, 1.1, 1.1, 1.0, 1.0])

off['tkIsoElectron'] = array('d', [10.0, 13.0, 16.0, 19.0, 22.0, 25.0, 28.0, 31.0, 34.0, 37.0, 40.0, 43.0, 46.0, 49.0, 52.0, 55.0, 58.0, 61.0, 64.0, 67.0, 70.0, 73.0, 76.0, 79.0, 82.0, 85.0, 88.0, 91.0, 94.0, 97.0])
offrate['tkIsoElectron'] = array('d', [433.9, 277.7, 172.0, 94.2, 62.9, 44.6, 32.2, 23.8, 19.5, 16.7, 14.1, 11.5, 9.6, 8.4, 7.1, 6.1, 5.3, 4.3, 3.3, 2.8, 2.5, 2.3, 2.1, 2.0, 1.8, 1.7, 1.5, 1.3, 1.2, 1.1])
onl['tkIsoElectron'] = array('d', [10.0, 13.0, 16.0, 19.0, 22.0, 25.0, 28.0, 31.0, 34.0, 37.0, 40.0, 43.0, 46.0, 49.0, 52.0, 55.0, 58.0, 61.0, 64.0, 67.0, 70.0, 73.0, 76.0, 79.0, 82.0, 85.0, 88.0, 91.0, 94.0, 97.0])
onlrate['tkIsoElectron'] = array('d', [299.8, 162.2, 80.0, 51.7, 34.8, 23.7, 18.8, 15.6, 12.1, 9.9, 8.2, 6.7, 5.5, 4.3, 3.2, 2.7, 2.4, 2.2, 2.0, 1.8, 1.6, 1.3, 1.3, 1.1, 1.0, 0.9, 0.8, 0.8, 0.7, 0.6])

off['standaloneElectron'] = array('d', [10.0, 13.0, 16.0, 19.0, 22.0, 25.0, 28.0, 31.0, 34.0, 37.0, 40.0, 43.0, 46.0, 49.0, 52.0, 55.0, 58.0, 61.0, 64.0, 67.0, 70.0, 73.0, 76.0, 79.0, 82.0, 85.0, 88.0, 91.0, 94.0, 97.0])
offrate['standaloneElectron'] = array('d', [13063.0, 5900.0, 2882.6, 1468.9, 696.8, 414.3, 263.4, 165.3, 114.5, 84.4, 64.4, 47.0, 36.4, 29.0, 23.5, 18.6, 15.5, 12.8, 10.2, 8.4, 6.9, 6.1, 5.1, 4.3, 3.9, 3.3, 2.7, 2.4, 2.3, 2.1])
onl['standaloneElectron'] = array('d', [10.0, 13.0, 16.0, 19.0, 22.0, 25.0, 28.0, 31.0, 34.0, 37.0, 40.0, 43.0, 46.0, 49.0, 52.0, 55.0, 58.0, 61.0, 64.0, 67.0, 70.0, 73.0, 76.0, 79.0, 82.0, 85.0, 88.0, 91.0, 94.0, 97.0])
onlrate['standaloneElectron'] = array('d', [3909.0, 1726.4, 705.7, 388.5, 232.4, 136.4, 92.8, 66.7, 45.9, 34.1, 26.5, 20.6, 15.9, 12.5, 9.8, 7.8, 6.5, 5.4, 4.4, 3.6, 3.3, 2.5, 2.2, 2.2, 2.0, 1.8, 1.7, 1.5, 1.4, 1.4])

off['tkPhotonIso'] = array('d', [10.0, 13.0, 16.0, 19.0, 22.0, 25.0, 28.0, 31.0, 34.0, 37.0, 40.0, 43.0, 46.0, 49.0, 52.0, 55.0, 58.0, 61.0, 64.0, 67.0, 70.0, 73.0, 76.0, 79.0, 82.0, 85.0, 88.0, 91.0, 94.0, 97.0])
offrate['tkPhotonIso'] = array('d', [2340.8, 1310.0, 732.3, 354.0, 200.2, 128.1, 82.1, 59.9, 44.9, 34.6, 26.1, 21.6, 17.7, 14.5, 12.3, 10.6, 8.5, 6.8, 5.8, 4.9, 4.3, 3.5, 3.0, 2.7, 2.2, 1.9, 1.8, 1.8, 1.6, 1.6])
onl['tkPhotonIso'] = array('d', [10.0, 13.0, 16.0, 19.0, 22.0, 25.0, 28.0, 31.0, 34.0, 37.0, 40.0, 43.0, 46.0, 49.0, 52.0, 55.0, 58.0, 61.0, 64.0, 67.0, 70.0, 73.0, 76.0, 79.0, 82.0, 85.0, 88.0, 91.0, 94.0, 97.0])
onlrate['tkPhotonIso'] = array('d', [1075.6, 522.3, 238.8, 147.6, 97.2, 63.7, 46.3, 34.8, 25.4, 20.8, 16.8, 13.8, 11.5, 9.5, 7.5, 6.1, 5.1, 4.6, 3.5, 2.9, 2.7, 2.1, 1.9, 1.8, 1.7, 1.6, 1.5, 1.3, 1.2, 1.2])

off['seededConePuppiJet'] = array('d', [40.0, 60.0, 80.0, 100.0, 120.0, 140.0, 160.0, 180.0, 200.0, 220.0, 240.0, 260.0, 280.0, 300.0, 320.0, 340.0, 360.0, 380.0, 400.0, 420.0])
offrate['seededConePuppiJet'] = array('d', [30655.4, 9669.9, 2710.2, 1016.4, 470.7, 239.3, 135.2, 79.2, 48.6, 30.4, 20.9, 14.3, 10.3, 7.4, 5.6, 4.4, 3.4, 2.5, 2.0, 1.8])
onl['seededConePuppiJet'] = array('d', [40.0, 60.0, 80.0, 100.0, 120.0, 140.0, 160.0, 180.0, 200.0, 220.0, 240.0, 260.0, 280.0, 300.0, 320.0, 340.0, 360.0, 380.0, 400.0, 420.0])
onlrate['seededConePuppiJet'] = array('d', [3620.8, 1007.5, 374.5, 165.2, 82.3, 42.9, 24.1, 14.7, 9.3, 6.1, 4.4, 3.1, 2.3, 1.6, 1.5, 1.1, 1.0, 0.8, 0.6, 0.5])

off['seededConePuppiJetExt'] = array('d', [40.0, 60.0, 80.0, 100.0, 120.0, 140.0, 160.0, 180.0, 200.0, 220.0, 240.0, 260.0, 280.0, 300.0, 320.0, 340.0, 360.0, 380.0, 400.0, 420.0])
offrate['seededConePuppiJetExt'] = array('d', [30750.3, 12886.4, 5099.8, 1977.7, 836.8, 371.0, 189.0, 104.7, 61.7, 38.0, 25.3, 17.1, 12.1, 8.4, 6.2, 4.7, 3.7, 2.8, 2.1, 1.9])
onl['seededConePuppiJetExt'] = array('d', [40.0, 60.0, 80.0, 100.0, 120.0, 140.0, 160.0, 180.0, 200.0, 220.0, 240.0, 260.0, 280.0, 300.0, 320.0, 340.0, 360.0, 380.0, 400.0, 420.0])
onlrate['seededConePuppiJetExt'] = array('d', [4475.8, 1316.2, 472.8, 203.3, 99.9, 52.0, 29.1, 17.7, 11.1, 7.0, 4.9, 3.4, 2.5, 1.8, 1.6, 1.2, 1.1, 0.8, 0.6, 0.5])

off['puppiPhase1Jet'] = array('d', [40.0, 60.0, 80.0, 100.0, 120.0, 140.0, 160.0, 180.0, 200.0, 220.0, 240.0, 260.0, 280.0, 300.0, 320.0, 340.0, 360.0, 380.0, 400.0, 420.0])
offrate['puppiPhase1Jet'] = array('d', [17614.7, 6262.8, 2267.2, 959.4, 441.1, 225.3, 125.4, 73.1, 44.8, 28.0, 19.1, 12.7, 9.4, 6.4, 5.0, 3.8, 3.1, 2.6, 2.0, 1.5])
onl['puppiPhase1Jet'] = array('d', [40.0, 60.0, 80.0, 100.0, 120.0, 140.0, 160.0, 180.0, 200.0, 220.0, 240.0, 260.0, 280.0, 300.0, 320.0, 340.0, 360.0, 380.0, 400.0, 420.0])
onlrate['puppiPhase1Jet'] = array('d', [3611.9, 1045.5, 384.4, 162.3, 77.9, 41.1, 22.9, 13.4, 8.6, 5.5, 4.0, 3.0, 2.3, 1.6, 1.3, 1.0, 0.8, 0.5, 0.3, 0.2])

off['puppiPhase1JetExt'] = array('d', [40.0, 60.0, 80.0, 100.0, 120.0, 140.0, 160.0, 180.0, 200.0, 220.0, 240.0, 260.0, 280.0, 300.0, 320.0, 340.0, 360.0, 380.0, 400.0, 420.0])
offrate['puppiPhase1JetExt'] = array('d', [19939.7, 9202.9, 4141.3, 1951.4, 910.5, 466.0, 246.6, 131.6, 76.5, 46.7, 30.0, 19.1, 13.5, 9.0, 6.7, 5.0, 3.8, 3.0, 2.2, 1.7])
onl['puppiPhase1JetExt'] = array('d', [40.0, 60.0, 80.0, 100.0, 120.0, 140.0, 160.0, 180.0, 200.0, 220.0, 240.0, 260.0, 280.0, 300.0, 320.0, 340.0, 360.0, 380.0, 400.0, 420.0])
onlrate['puppiPhase1JetExt'] = array('d', [4595.0, 1403.6, 512.6, 207.4, 97.9, 50.2, 27.2, 15.6, 9.6, 5.9, 4.2, 3.1, 2.4, 1.7, 1.3, 1.0, 0.8, 0.5, 0.3, 0.2])

off['trackerJet'] = array('d', [40.0, 60.0, 80.0, 100.0, 120.0, 140.0, 160.0, 180.0, 200.0, 220.0, 240.0, 260.0, 280.0, 300.0, 320.0, 340.0, 360.0, 380.0, 400.0, 420.0])
offrate['trackerJet'] = array('d', [16309.8, 12150.3, 9076.2, 6927.7, 5449.0, 4296.2, 3425.4, 2779.1, 2265.1, 1855.5, 1540.8, 1278.0, 1068.3, 904.2, 766.8, 650.3, 558.2, 478.4, 413.6, 362.8])
onl['trackerJet'] = array('d', [40.0, 60.0, 80.0, 100.0, 120.0, 140.0, 160.0, 180.0, 200.0, 220.0, 240.0, 260.0, 280.0, 300.0, 320.0, 340.0, 360.0, 380.0, 400.0, 420.0])
onlrate['trackerJet'] = array('d', [443.5, 107.4, 37.3, 17.3, 10.5, 3.2, 1.6, 0.9, 0.4, 0.2, 0.1, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0])

off['puppiPhase1HT'] = array('d', [50.0, 75.0, 100.0, 125.0, 150.0, 175.0, 200.0, 225.0, 250.0, 275.0, 300.0, 325.0, 350.0, 375.0, 400.0, 425.0, 450.0, 475.0, 500.0, 525.0, 550.0, 575.0, 600.0, 625.0, 650.0, 675.0, 700.0, 725.0, 750.0, 775.0, 800.0, 825.0, 850.0, 875.0, 900.0, 925.0, 950.0, 975.0])
offrate['puppiPhase1HT'] = array('d', [6971.6, 6971.6, 2865.9, 1694.0, 958.9, 560.3, 339.6, 213.1, 138.8, 94.6, 66.0, 47.1, 34.8, 25.8, 19.7, 15.4, 11.1, 7.9, 6.2, 5.0, 4.3, 3.9, 3.2, 2.6, 2.0, 1.7, 1.5, 1.2, 1.2, 1.1, 0.9, 0.8, 0.8, 0.6, 0.6, 0.6, 0.5, 0.4])
onl['puppiPhase1HT'] = array('d', [50.0, 75.0, 100.0, 125.0, 150.0, 175.0, 200.0, 225.0, 250.0, 275.0, 300.0, 325.0, 350.0, 375.0, 400.0, 425.0, 450.0, 475.0, 500.0, 525.0, 550.0, 575.0, 600.0, 625.0, 650.0, 675.0, 700.0, 725.0, 750.0, 775.0, 800.0, 825.0, 850.0, 875.0, 900.0, 925.0, 950.0, 975.0])
onlrate['puppiPhase1HT'] = array('d', [2626.4, 1508.6, 803.7, 445.5, 261.2, 159.6, 102.5, 68.7, 47.0, 33.6, 24.1, 18.3, 13.2, 9.1, 6.7, 5.2, 4.4, 3.8, 3.2, 2.4, 1.9, 1.6, 1.3, 1.2, 1.1, 0.9, 0.8, 0.7, 0.6, 0.6, 0.5, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4, 0.4])

off['trackerHT'] = array('d', [50.0, 75.0, 100.0, 125.0, 150.0, 175.0, 200.0, 225.0, 250.0, 275.0, 300.0, 325.0, 350.0, 375.0, 400.0, 425.0, 450.0, 475.0, 500.0, 525.0, 550.0, 575.0, 600.0, 625.0, 650.0, 675.0, 700.0, 725.0, 750.0, 775.0, 800.0, 825.0, 850.0, 875.0, 900.0, 925.0, 950.0, 975.0])
offrate['trackerHT'] = array('d', [21540.0, 16010.3, 10825.1, 7071.5, 4444.2, 2838.9, 1791.5, 1165.6, 773.3, 530.4, 366.4, 266.7, 196.5, 146.6, 112.4, 86.6, 69.6, 55.2, 45.1, 36.2, 29.4, 23.7, 19.0, 16.4, 14.1, 11.6, 9.9, 8.6, 7.3, 6.6, 5.8, 5.0, 4.6, 4.1, 3.7, 3.4, 3.1, 2.7])
onl['trackerHT'] = array('d', [50.0, 75.0, 100.0, 125.0, 150.0, 175.0, 200.0, 225.0, 250.0, 275.0, 300.0, 325.0, 350.0, 375.0, 400.0, 425.0, 450.0, 475.0, 500.0, 525.0, 550.0, 575.0, 600.0, 625.0, 650.0, 675.0, 700.0, 725.0, 750.0, 775.0, 800.0, 825.0, 850.0, 875.0, 900.0, 925.0, 950.0, 975.0])
onlrate['trackerHT'] = array('d', [2308.5, 486.5, 146.6, 58.6, 25.8, 13.1, 7.2, 4.6, 3.1, 1.9, 1.3, 0.8, 0.5, 0.4, 0.3, 0.1, 0.1, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0])

off['puppiPhase1MHT'] = array('d', [50.0, 75.0, 100.0, 125.0, 150.0, 175.0, 200.0, 225.0, 250.0, 275.0, 300.0, 325.0, 350.0, 375.0, 400.0, 425.0, 450.0, 475.0, 500.0, 525.0, 550.0, 575.0, 600.0, 625.0, 650.0, 675.0, 700.0, 725.0, 750.0, 775.0, 800.0, 825.0, 850.0, 875.0, 900.0, 925.0, 950.0, 975.0])
offrate['puppiPhase1MHT'] = array('d', [849.5, 197.7, 53.3, 18.2, 7.4, 2.7, 1.5, 0.8, 0.4, 0.3, 0.3, 0.2, 0.1, 0.1, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0])
onl['puppiPhase1MHT'] = array('d', [50.0, 75.0, 100.0, 125.0, 150.0, 175.0, 200.0, 225.0, 250.0, 275.0, 300.0, 325.0, 350.0, 375.0, 400.0, 425.0, 450.0, 475.0, 500.0, 525.0, 550.0, 575.0, 600.0, 625.0, 650.0, 675.0, 700.0, 725.0, 750.0, 775.0, 800.0, 825.0, 850.0, 875.0, 900.0, 925.0, 950.0, 975.0])
onlrate['puppiPhase1MHT'] = array('d', [1347.2, 290.5, 71.2, 21.4, 8.2, 3.1, 1.5, 0.8, 0.4, 0.3, 0.3, 0.2, 0.1, 0.1, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0])

off['trackerMHT'] = array('d', [50.0, 75.0, 100.0, 125.0, 150.0, 175.0, 200.0, 225.0, 250.0, 275.0, 300.0, 325.0, 350.0, 375.0, 400.0, 425.0, 450.0, 475.0, 500.0, 525.0, 550.0, 575.0, 600.0, 625.0, 650.0, 675.0, 700.0, 725.0, 750.0, 775.0, 800.0, 825.0, 850.0, 875.0, 900.0, 925.0, 950.0, 975.0])
offrate['trackerMHT'] = array('d', [484.2, 212.2, 103.6, 56.2, 33.6, 20.6, 13.5, 8.8, 6.5, 4.8, 3.3, 2.5, 2.1, 1.4, 1.1, 0.7, 0.4, 0.2, 0.2, 0.2, 0.2, 0.1, 0.1, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0])
onl['trackerMHT'] = array('d', [50.0, 75.0, 100.0, 125.0, 150.0, 175.0, 200.0, 225.0, 250.0, 275.0, 300.0, 325.0, 350.0, 375.0, 400.0, 425.0, 450.0, 475.0, 500.0, 525.0, 550.0, 575.0, 600.0, 625.0, 650.0, 675.0, 700.0, 725.0, 750.0, 775.0, 800.0, 825.0, 850.0, 875.0, 900.0, 925.0, 950.0, 975.0])
onlrate['trackerMHT'] = array('d', [104.9, 18.1, 5.0, 1.9, 0.5, 0.2, 0.1, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0])

off['puppiMET'] = array('d', [50.0, 75.0, 100.0, 125.0, 150.0, 175.0, 200.0, 225.0, 250.0, 275.0, 300.0, 325.0, 350.0, 375.0, 400.0, 425.0, 450.0, 475.0])
offrate['puppiMET'] = array('d', [31038.0, 24958.4, 7588.3, 1921.2, 540.6, 166.3, 50.8, 17.1, 6.6, 2.8, 1.2, 0.7, 0.3, 0.2, 0.1, 0.1, 0.1, 0.1])
onl['puppiMET'] = array('d', [50.0, 75.0, 100.0, 125.0, 150.0, 175.0, 200.0, 225.0, 250.0, 275.0, 300.0, 325.0, 350.0, 375.0, 400.0, 425.0, 450.0, 475.0])
onlrate['puppiMET'] = array('d', [1376.3, 256.8, 50.0, 11.2, 3.3, 1.1, 0.4, 0.2, 0.1, 0.1, 0.1, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0])

#off['trackerMET'] = array('d', [0.0, 5.0, 10.0, 15.0, 20.0, 25.0, 30.0, 35.0, 40.0, 45.0, 50.0, 55.0, 60.0, 65.0, 70.0, 75.0, 80.0, 85.0, 90.0, 95.0, 100.0, 105.0, 110.0, 115.0, 120.0, 125.0, 130.0, 135.0, 140.0, 145.0, 150.0, 155.0, 160.0, 165.0, 170.0, 175.0, 180.0, 185.0, 190.0, 195.0, 200.0, 205.0, 210.0, 215.0, 220.0, 225.0, 230.0, 235.0, 240.0, 245.0, 250.0, 255.0, 260.0, 265.0, 270.0, 275.0, 280.0, 285.0, 290.0, 295.0, 300.0, 305.0, 310.0, 315.0, 320.0, 325.0, 330.0, 335.0, 340.0, 345.0, 350.0, 355.0, 360.0, 365.0, 370.0, 375.0, 380.0, 385.0, 390.0, 395.0, 400.0, 405.0, 410.0, 415.0, 420.0, 425.0, 430.0, 435.0, 440.0, 445.0, 450.0, 455.0, 460.0, 465.0, 470.0, 475.0, 480.0, 485.0, 490.0, 495.0])
#offrate['trackerMET'] = array('d', [30746.0, 30550.6, 30200.3, 29758.9, 29156.8, 28443.8, 27771.7, 26885.5, 26071.4, 25041.8, 23966.3, 23032.3, 21880.3, 20910.2, 19727.3, 18557.0, 17580.3, 16431.9, 15488.8, 14394.4, 13336.0, 12491.2, 11501.1, 10726.0, 9840.9, 8995.6, 8334.1, 7593.2, 7019.0, 6381.3, 5789.4, 5334.6, 4837.1, 4445.9, 4013.6, 3620.2, 3328.2, 2992.3, 2743.4, 2472.4, 2223.3, 2037.0, 1831.7, 1675.7, 1508.4, 1359.8, 1243.4, 1121.7, 1029.8, 929.1, 841.5, 773.3, 701.2, 646.2, 586.3, 532.7, 492.2, 448.3, 414.6, 379.0, 345.5, 320.8, 292.9, 274.0, 250.2, 230.7, 216.1, 198.6, 185.2, 171.7, 158.6, 149.8, 138.4, 130.5, 121.8, 114.2, 107.8, 101.2, 96.9, 91.0, 85.3, 81.4, 76.3, 71.9, 69.2, 66.1, 63.5, 59.9, 56.5, 54.1, 51.2, 48.7, 46.5, 44.2, 42.1, 40.0, 38.6, 36.9, 35.7, 34.7])
#onl['trackerMET'] = array('d', [0.0, 5.0, 10.0, 15.0, 20.0, 25.0, 30.0, 35.0, 40.0, 45.0, 50.0, 55.0, 60.0, 65.0, 70.0, 75.0, 80.0, 85.0, 90.0, 95.0, 100.0, 105.0, 110.0, 115.0, 120.0, 125.0, 130.0, 135.0, 140.0, 145.0, 150.0, 155.0, 160.0, 165.0, 170.0, 175.0, 180.0, 185.0, 190.0, 195.0, 200.0, 205.0, 210.0, 215.0, 220.0, 225.0, 230.0, 235.0, 240.0, 245.0, 250.0, 255.0, 260.0, 265.0, 270.0, 275.0, 280.0, 285.0, 290.0, 295.0, 300.0, 305.0, 310.0, 315.0, 320.0, 325.0, 330.0, 335.0, 340.0, 345.0, 350.0, 355.0, 360.0, 365.0, 370.0, 375.0, 380.0, 385.0, 390.0, 395.0, 400.0, 405.0, 410.0, 415.0, 420.0, 425.0, 430.0, 435.0, 440.0, 445.0, 450.0, 455.0, 460.0, 465.0, 470.0, 475.0, 480.0, 485.0, 490.0, 495.0])
#onlrate['trackerMET'] = array('d', [30794.3, 27485.3, 20313.5, 12818.3, 7137.7, 3687.3, 1831.7, 913.4, 478.0, 261.6, 153.4, 97.4, 66.5, 46.5, 34.4, 26.5, 20.8, 16.4, 13.5, 11.7, 10.6, 9.1, 7.8, 6.6, 6.0, 4.7, 2.7, 1.9, 1.4, 1.0, 0.9, 0.7, 0.5, 0.4, 0.3, 0.2, 0.2, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0])

off['trackerMET'] =  array('d', [50.0, 75.0, 100.0, 125.0, 150.0, 175.0, 200.0, 225.0, 250.0, 275.0, 300.0, 325.0, 350.0, 375.0, 400.0, 425.0, 450.0, 475.0])
offrate['trackerMET'] =  array('d', [23966.3, 18557.0, 13336.0, 8995.6, 5789.4, 3620.2, 2223.3, 1359.8, 841.5, 532.7, 345.5, 230.7, 158.6, 114.2, 85.3, 66.1, 51.2, 40.0])
onl['trackerMET'] =  array('d', [50.0, 75.0, 100.0, 125.0, 150.0, 175.0, 200.0, 225.0, 250.0, 275.0, 300.0, 325.0, 350.0, 375.0, 400.0, 425.0, 450.0, 475.0])
onlrate['trackerMET'] =  array('d', [153.4, 26.5, 10.6, 4.7, 0.9, 0.2, 0.1, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0])

off['NNPuppiTauLoose'] = array('d', [10.0, 15.0, 20.0, 25.0, 30.0, 35.0, 40.0, 45.0, 50.0, 55.0, 60.0, 65.0, 70.0, 75.0, 80.0, 85.0, 90.0, 95.0, 100.0, 105.0, 110.0, 115.0, 120.0, 125.0, 130.0, 135.0, 140.0, 145.0, 150.0, 155.0])
offrate['NNPuppiTauLoose'] = array('d', [4586.4, 4586.4, 4586.4, 3350.7, 2735.0, 1817.7, 1217.7, 832.6, 574.1, 416.9, 301.7, 226.1, 175.3, 135.3, 108.8, 89.4, 73.5, 62.7, 53.8, 46.9, 41.0, 36.2, 31.6, 28.8, 25.8, 23.0, 20.5, 18.9, 17.4, 15.7])
onl['NNPuppiTauLoose'] = array('d', [10.0, 15.0, 20.0, 25.0, 30.0, 35.0, 40.0, 45.0, 50.0, 55.0, 60.0, 65.0, 70.0, 75.0, 80.0, 85.0, 90.0, 95.0, 100.0, 105.0, 110.0, 115.0, 120.0, 125.0, 130.0, 135.0, 140.0, 145.0, 150.0, 155.0])
onlrate['NNPuppiTauLoose'] = array('d', [4380.8, 1979.6, 1011.7, 556.5, 322.9, 201.4, 134.4, 95.7, 71.5, 53.8, 43.4, 35.0, 28.6, 23.9, 20.3, 17.7, 15.6, 12.9, 11.3, 10.1, 9.2, 8.0, 7.2, 6.0, 5.5, 5.3, 4.7, 4.3, 3.9, 3.4])

off['CaloTau'] = array('d', [10.0, 15.0, 20.0, 25.0, 30.0, 35.0, 40.0, 45.0, 50.0, 55.0, 60.0, 65.0, 70.0, 75.0, 80.0, 85.0, 90.0, 95.0, 100.0, 105.0, 110.0, 115.0, 120.0, 125.0, 130.0, 135.0, 140.0, 145.0, 150.0, 155.0])
offrate['CaloTau'] = array('d', [31038.0, 31038.0, 31037.9, 31028.4, 30815.0, 29443.7, 25079.2, 18375.1, 11389.3, 6651.9, 3567.8, 2141.9, 1262.9, 827.8, 589.0, 435.3, 338.9, 267.9, 216.2, 177.2, 146.1, 121.7, 105.3, 90.4, 76.9, 65.2, 56.6, 49.3, 42.9, 38.3])
onl['CaloTau'] = array('d', [10.0, 15.0, 20.0, 25.0, 30.0, 35.0, 40.0, 45.0, 50.0, 55.0, 60.0, 65.0, 70.0, 75.0, 80.0, 85.0, 90.0, 95.0, 100.0, 105.0, 110.0, 115.0, 120.0, 125.0, 130.0, 135.0, 140.0, 145.0, 150.0, 155.0])
onlrate['CaloTau'] = array('d', [31038.0, 31037.8, 30683.7, 24181.2, 11196.2, 4048.2, 1689.3, 871.1, 523.2, 342.6, 239.2, 175.4, 130.2, 97.8, 75.0, 59.9, 47.1, 36.7, 29.5, 24.5, 21.1, 17.4, 14.5, 12.7, 11.0, 9.6, 8.1, 6.6, 5.6, 4.9])

