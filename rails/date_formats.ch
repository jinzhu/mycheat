= rails_date_formats: |
  
  (Rails 2.1)
  
  Date
  ====
              db:'%Y-%m-%d'   2008-08-20
    long_ordinal:'&proc'      August 20th, 2008
            long:'%B %e, %Y'  August 20, 2008
          rfc822:'%e %b %Y'   20 Aug 2008
          number:'%Y%m%d'     20080820
           short:'%e %b'      20 Aug
  
  DateTime
  ========
              db:'%Y-%m-%d'   2008-08-20 16:56:21
    long_ordinal:'&proc'      August 20th, 2008 16:56
            long:'%B %e, %Y'  August 20, 2008 16:56
          rfc822:'%e %b %Y'   Wed, 20 Aug 2008 16:56:21 -0600
          number:'%Y%m%d'     20080820165621
           short:'%e %b'      20 Aug 16:56
  
  Time
  ====
              db:'%Y-%m-%d %H:%M:%S'         2008-08-20 16:56:21
    long_ordinal:'&proc'                     August 20th, 2008 16:56
            long:'%B %d, %Y %H:%M'           August 20, 2008 16:56
          rfc822:'%a, %d %b %Y %H:%M:%S %z'  Wed, 20 Aug 2008 16:56:21 -0600
           short:'%d %b %H:%M'               20 Aug 16:56
          number:'%Y%m%d%H%M%S'              20080820165621
            time:'%H:%M'                     16:56
  

