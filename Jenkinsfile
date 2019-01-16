pipeline {
  agent any

environment {
        ANDROID_HOME = '/Users/ayoemiloju/Library/Android/sdk'
    }

  stages {
    stage('Build') {
         steps {
         sh   'npm install'

        }
   }



   stage('fastlanebeta') {
    steps  {
       parallel ("build android" : {

      sh  './jenkins/scripts/fastlanebeta.sh'
      echo ' app has been deplloyed successfully'

        },

       "build ios app" : {
        sh './jenkins/scripts/ios.sh'
        echo 'ios app has been deployed successfully'
       }
    )
  }

}
}

post {
    always {
      emailext attachmentsPattern: {'**/report.html' },
      body: 'Find attachments',
      subject: 'testtrail',
      to: 'ayoemiloju@gmail.com',
      attachLog: true
      
    }
}

}
