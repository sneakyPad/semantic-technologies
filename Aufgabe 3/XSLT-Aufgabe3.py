#!/usr/bin/env python
# coding: utf-8

# In[2]:


get_ipython().system('pip install lxml')


# In[34]:


from lxml import etree
f_xsl = './program_selector.xsl'
f_xml = './rytecDE_Basic.sec'
f_out = './report.xml'


transform = etree.XSLT(etree.parse(f_xsl))

result = transform(etree.parse(f_xml), pTime="'20191126072700 +0100'", pChannel ="'Kika.de'")
# print(result)
result.write(f_out)


# In[35]:


print(result)

