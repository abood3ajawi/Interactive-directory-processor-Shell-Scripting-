# Interactive-directory-processor-Shell-Scripting-
interactive directory processor that takes 3 arguments:
 <div>- Directory</div>
 <div>- "ana" or "del" or "arr"</div>
 <div>- regex or biggest file size or file type</div>
 
The first agrument is the name of the directory that processing will happen recursively. 
The second and third arguments have 3 possibilites:
- "ana" which means analytics, then followed by the regex that you are going to count.
- "del" which mean delete, followed by the biggest file size. Files larger than that should be deleted.
- "arr" which mean arrange, followd by the file type you are going to arrange in one new directory
