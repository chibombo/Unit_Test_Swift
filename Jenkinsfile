    node{
        stage('Prepare Project'){
        downloadProject()
        }
        stage('Test Branch'){
            echo "branch: ${env.BRANCH_NAME}"
            if (env.BRANCH_NAME == 'master'){
                echo "Hello from master branch"
            }else if (env.BRANCH_NAME == 'develop'){
                echo "Hello from develop branch"
                buildAndGenerateIpa()
            }else if (env.BRANCH_NAME == 'testing'){
                echo "Hello from testing branch"
                buildAndTest()
                testResult()
            }else{
                echo "Something wrong"
            }
        }
    }
    def downloadProject(){
        git branch: env.BRANCH_NAME,
        credentialsId: 'chibombo',
        url: 'https://github.com/chibombo/Unit_Test_Swift.git'
    }

    def buildAndTest(){
        xcodeBuild appURL: '', assetPackManifestURL: '', buildDir: '', bundleID: '', bundleIDInfoPlistPath: '', cfBundleShortVersionStringValue: '', cfBundleVersionValue: '', configuration: 'Debug', developmentTeamID: '78CG4YWAP7', developmentTeamName: '', displayImageURL: '', fullSizeImageURL: '', ipaExportMethod: 'ad-hoc', ipaName: '', ipaOutputDirectory: '', keychainName: '', keychainPath: '', keychainPwd: '', logfileOutputDirectory: '', provisioningProfiles: [[provisioningProfileAppId: '', provisioningProfileUUID: '']], sdk: '', symRoot: '', target: 'Unit_Test_Swift', thinning: '', xcodeProjectFile: '', xcodeProjectPath: '', xcodeSchema: '', xcodeWorkspaceFile: '', xcodebuildArguments: 'test -scheme Unit_Test_Swift -sdk iphonesimulator -destination \'platform=iOS Simulator,name=iPhone 5s\''
    }

    def testResult(){
        junit 'test-reports/*.xml'
    }

    def buildAndGenerateIpa(){
        xcodeBuild appURL: '', assetPackManifestURL: '', buildDir: '', buildIpa: true, bundleID: '', bundleIDInfoPlistPath: '', cfBundleShortVersionStringValue: '', cfBundleVersionValue: '', configuration: 'Debug', developmentTeamID: '78CG4YWAP7', developmentTeamName: '', displayImageURL: '', fullSizeImageURL: '', generateArchive: true, ipaExportMethod: 'development', ipaName: '', ipaOutputDirectory: pwd()+'/IPAS/Debug', keychainName: '', keychainPath: '', keychainPwd: '', logfileOutputDirectory: '', manualSigning: false, provisioningProfiles: [[provisioningProfileAppId: '', provisioningProfileUUID: '']], sdk: '', symRoot: '', target: 'Unit_Test_Swift', thinning: '<thin-for-all-variants>', xcodeProjectFile: '', xcodeProjectPath: '', xcodeSchema: 'Unit_Test_Swift', xcodeWorkspaceFile: '', xcodebuildArguments: ''
    }

