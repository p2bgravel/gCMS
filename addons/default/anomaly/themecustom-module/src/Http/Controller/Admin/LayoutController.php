<?php namespace Anomaly\ThemecustomModule\Http\Controller\Admin;

use Anomaly\ThemecustomModule\Layout\Form\LayoutFormBuilder;
use Anomaly\ThemecustomModule\Layout\Table\LayoutTableBuilder;
use Anomaly\Streams\Platform\Http\Controller\AdminController;

class LayoutController extends AdminController
{

    /**
     * Display an index of existing entries.
     *
     * @param LayoutTableBuilder $table
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function index(LayoutTableBuilder $table)
    {
        return $table->render();
    }

    /**
     * Create a new entry.
     *
     * @param LayoutFormBuilder $form
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function create(LayoutFormBuilder $form)
    {
        return $form->render();
    }

    /**
     * Edit an existing entry.
     *
     * @param LayoutFormBuilder $form
     * @param        $id
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function edit(LayoutFormBuilder $form, $id)
    {
        return $form->render($id);
    }
}
