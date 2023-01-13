#!/bin/bash
(
    OS_VAR="$1"
    FLAVOR_VAR="$2"

    #flutter clean
    #flutter build apk --split-per-abi --flavor qa

    if [ "production" = $FLAVOR_VAR ]; then
      if [ "aos" = $OS_VAR ]; then
        echo "Andorid Production Building.."
        flutter build apk --flavor production
      else
        echo "iOS Production Building.."
        flutter build ipa --flavor production
      fi
    elif [ "staging" = $FLAVOR_VAR ]; then
      if [ "aos" = $OS_VAR ]; then
        echo "Andorid Staging Building.."
        flutter build apk --flavor staging
      else
        echo "iOS Staging Building.."
        flutter build ipa --flavor staging
      fi
    elif [ "qa" = $FLAVOR_VAR ]; then
      if [ "aos" = $OS_VAR ]; then
        echo "Andorid QA Building.."
        flutter build apk --flavor qa
      else
        echo "iOS QA Building.."
        flutter build ipa --flavor qa
      fi
    elif [ "development" = $FLAVOR_VAR ]; then
      if [ "aos" = $OS_VAR ]; then
        echo "Andorid Development Building.."
        flutter build apk --flavor development
      else
        echo "iOS Development Building.."
        flutter build ipa --flavor development
      fi
    fi

    echo "Build Done"
)
