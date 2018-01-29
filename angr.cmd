import angr
import claripy
import monkeyhex
load_options={}
load_options['custom_ld_path']=['./libarmxx']
load_options['custom_entry_point']=['0x48d60c']
load_options={'custom_ld_path':'./libarmxx','custom_entry_point':'0x48d60c'}
p=angr.Project("./arm/libexec.so_un.so",load_options=load_options)
p.entry

state = b.factory.blank_state(addr=0x400000)
s = p.factory.blank_state(addr=0x400000)
s.register
s.register?
s.block
p.loader.all_objects
p.loader.main_object
p.loader.main_object.arch
p.loader.main_object.dynsym
p.loader.main_object.dynsym.num_symbols
p.loader.main_object.dynsym.num_symbols.im_class
p.loader.main_object.dynsym.num_symbols.im_class.data
p.loader.main_object.dynsym.num_symbols.im_func
o=p.loader.main_object
o.entry
o.sections
o.segments
o.plt['open']
a=o.plt['open']
o.plt
o.plt
o.deps
o.mapped_base
p.loader.all_elf_objects
p.loader.all_elf_objects
p.loader.main_object.deps
s=p.factory.blank_state(addr=0x4008d60c)
s=p.factory.blank_state(addr=0x48d60c)
s.block.pp()
s.block
s.block.im_func
s.step
p.factory.block(0x48d60c).pp()




import angr, claripy, monkeyhex
p = angr.Project('/bin/true')


import angr, claripy, monkeyhex
load_options={}
load_options['custom_ld_path']=['./libarm4xx']
p=angr.Project("./binarm4/true",load_options=load_options)
p.entry





load_options['custom_entry_point']=['0x48d60c']
load_options={'custom_ld_path':'./libarmxx','custom_entry_point':'0x48d60c'}


load_options={}
load_options['custom_ld_path']=['./libarmxx']
p=angr.Project("./arm/libexec.so_un.so",load_options=load_options)
p.entry
