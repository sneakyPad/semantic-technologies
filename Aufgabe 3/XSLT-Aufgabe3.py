

import argparse
from lxml import etree


def main(time, channel):

    f_xsl = './program_selector_v1.xsl'
    f_xml = './rytecDE_Basic.sec'
    f_out = './report.xml'


    transform = etree.XSLT(etree.parse(f_xsl))

    print('time: ', time)
    print('channel', channel)
    
    result = transform(etree.parse(f_xml), pTime=time, pChannel =channel)
    #pTime = "'20191126072700 +0100'"
    #pChannel ="'Kika.de'"
    print(result)
    result.write(f_out)
    
if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='Process some integers.')
    parser.add_argument('-t', '--time',type=str, help='time')
    parser.add_argument('-c','--channel',
                    help='channel')
    
    args = vars(parser.parse_args())
    print(args)
    main(args['time'], args['channel'])
    