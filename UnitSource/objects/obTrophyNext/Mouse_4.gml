if Type=0 {
    if type=1 {
        with obOverview {
             if next<2 {
                next++
                maxRead+=12
            }
        }
    } else { 
      with obOverview {
          if next>0
              {
                  next--
                  maxRead-=12
              }
          }
      }
}

