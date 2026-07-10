# Legacy Data Directory

This directory is legacy/sample material from earlier Research OS tests.

It is not the canonical data layer.

The current canonical runtime data layer is:

```text
/Users/pangpatrick/Desktop/research_data
```

Machine-readable data:

```text
/Users/pangpatrick/Desktop/research_data/system_index
```

Human-readable PDFs:

```text
/Users/pangpatrick/Desktop/research_data/readable
```

New workflows should read `data_layer/data_layer_config.json` and use `scripts/inspect_data_layer.rb` or `scripts/build_data_context.rb`.

Do not add raw paid data exports, private API dumps, or daily raw collection files to this repository.
