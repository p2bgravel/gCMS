<?php namespace Anomaly\ThemecustomModule\Layout;

use Anomaly\ThemecustomModule\Layout\Contract\LayoutRepositoryInterface;
use Anomaly\Streams\Platform\Entry\EntryRepository;

class LayoutRepository extends EntryRepository implements LayoutRepositoryInterface
{

    /**
     * The entry model.
     *
     * @var LayoutModel
     */
    protected $model;

    /**
     * Create a new LayoutRepository instance.
     *
     * @param LayoutModel $model
     */
    public function __construct(LayoutModel $model)
    {
        $this->model = $model;
    }
}
