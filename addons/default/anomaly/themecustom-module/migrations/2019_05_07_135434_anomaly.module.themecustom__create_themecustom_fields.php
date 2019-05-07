<?php

use Anomaly\Streams\Platform\Database\Migration\Migration;

class AnomalyModuleThemecustomCreateThemecustomFields extends Migration
{

    /**
     * The addon fields.
     *
     * @var array
     */
    protected $fields = [
        'name' => 'anomaly.field_type.text',
        'slug' => [
            'type' => 'anomaly.field_type.slug',
            'config' => [
                'slugify' => 'name',
                'type' => '_',
            ],
        ],
        'poster' => 'anomaly.field_type.file',
        'categories' => [
            'type' => 'anomaly.field_type.multiple',
            'config' => [
                'title_name' => 'name',
                'related' => CategoryModel::class,
            ],
        ],
    ];

}
