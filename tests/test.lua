args = ...
ds_name = args["argv"][1]

function get_all_props(ds_name)
    local props = {}
    local sys_prop_names = zfs.list.system_properties(ds_name)
    for _, spn in ipairs(sys_prop_names) do
        p_val, p_src = zfs.get_prop(ds_name, spn)
        props[spn] = { value = p_val, source = p_src }
    end
    for upn,p_val,p_src in zfs.list.user_properties(ds_name) do
        props[upn] = { value = p_val, source = p_src }
    end
    return props
end

-- get_all_props(ds_name)
return zfs.list.system_properties(ds_name)




