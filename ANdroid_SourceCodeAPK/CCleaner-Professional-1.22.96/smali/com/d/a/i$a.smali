.class final Lcom/d/a/i$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/d/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/d/a/i;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/d/a/i;)V
    .locals 0

    .prologue
    .line 473
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 474
    iput-object p2, p0, Lcom/d/a/i$a;->a:Lcom/d/a/i;

    .line 475
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 14

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 478
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 528
    :pswitch_0
    sget-object v0, Lcom/d/a/t;->a:Landroid/os/Handler;

    new-instance v1, Lcom/d/a/i$a$1;

    invoke-direct {v1, p0, p1}, Lcom/d/a/i$a$1;-><init>(Lcom/d/a/i$a;Landroid/os/Message;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 534
    :cond_0
    :goto_0
    return-void

    .line 480
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/d/a/a;

    .line 481
    iget-object v1, p0, Lcom/d/a/i$a;->a:Lcom/d/a/i;

    .line 1174
    invoke-virtual {v1, v0, v2}, Lcom/d/a/i;->a(Lcom/d/a/a;Z)V

    goto :goto_0

    .line 485
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/d/a/a;

    .line 486
    iget-object v2, p0, Lcom/d/a/i$a;->a:Lcom/d/a/i;

    .line 2081
    iget-object v3, v0, Lcom/d/a/a;->i:Ljava/lang/String;

    .line 1214
    iget-object v1, v2, Lcom/d/a/i;->e:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/d/a/c;

    .line 1215
    if-eqz v1, :cond_1

    .line 1216
    invoke-virtual {v1, v0}, Lcom/d/a/c;->a(Lcom/d/a/a;)V

    .line 1217
    invoke-virtual {v1}, Lcom/d/a/c;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1218
    iget-object v1, v2, Lcom/d/a/i;->e:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2101
    iget-object v1, v0, Lcom/d/a/a;->a:Lcom/d/a/t;

    .line 1219
    iget-boolean v1, v1, Lcom/d/a/t;->n:Z

    if-eqz v1, :cond_1

    .line 1220
    const-string/jumbo v1, "Dispatcher"

    const-string/jumbo v3, "canceled"

    .line 3073
    iget-object v4, v0, Lcom/d/a/a;->b:Lcom/d/a/w;

    .line 1220
    invoke-virtual {v4}, Lcom/d/a/w;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/d/a/ae;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1225
    :cond_1
    iget-object v1, v2, Lcom/d/a/i;->h:Ljava/util/Set;

    .line 3109
    iget-object v3, v0, Lcom/d/a/a;->j:Ljava/lang/Object;

    .line 1225
    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1226
    iget-object v1, v2, Lcom/d/a/i;->g:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/d/a/a;->c()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4101
    iget-object v1, v0, Lcom/d/a/a;->a:Lcom/d/a/t;

    .line 1227
    iget-boolean v1, v1, Lcom/d/a/t;->n:Z

    if-eqz v1, :cond_2

    .line 1228
    const-string/jumbo v1, "Dispatcher"

    const-string/jumbo v3, "canceled"

    .line 5073
    iget-object v4, v0, Lcom/d/a/a;->b:Lcom/d/a/w;

    .line 1228
    invoke-virtual {v4}, Lcom/d/a/w;->a()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "because paused request got canceled"

    invoke-static {v1, v3, v4, v5}, Lcom/d/a/ae;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1233
    :cond_2
    iget-object v1, v2, Lcom/d/a/i;->f:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/d/a/a;->c()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/d/a/a;

    .line 1234
    if-eqz v0, :cond_0

    .line 5101
    iget-object v1, v0, Lcom/d/a/a;->a:Lcom/d/a/t;

    .line 1234
    iget-boolean v1, v1, Lcom/d/a/t;->n:Z

    if-eqz v1, :cond_0

    .line 1235
    const-string/jumbo v1, "Dispatcher"

    const-string/jumbo v2, "canceled"

    .line 6073
    iget-object v0, v0, Lcom/d/a/a;->b:Lcom/d/a/w;

    .line 1235
    invoke-virtual {v0}, Lcom/d/a/w;->a()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "from replaying"

    invoke-static {v1, v2, v0, v3}, Lcom/d/a/ae;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 490
    :pswitch_3
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 491
    iget-object v6, p0, Lcom/d/a/i$a;->a:Lcom/d/a/i;

    .line 6241
    iget-object v0, v6, Lcom/d/a/i;->h:Ljava/util/Set;

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6247
    iget-object v0, v6, Lcom/d/a/i;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6248
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/d/a/c;

    .line 6378
    iget-object v1, v0, Lcom/d/a/c;->b:Lcom/d/a/t;

    .line 6249
    iget-boolean v8, v1, Lcom/d/a/t;->n:Z

    .line 7374
    iget-object v4, v0, Lcom/d/a/c;->k:Lcom/d/a/a;

    .line 7382
    iget-object v9, v0, Lcom/d/a/c;->l:Ljava/util/List;

    .line 6253
    if-eqz v9, :cond_7

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    move v1, v2

    .line 6256
    :goto_2
    if-nez v4, :cond_4

    if-eqz v1, :cond_3

    .line 6260
    :cond_4
    if-eqz v4, :cond_5

    .line 8109
    iget-object v10, v4, Lcom/d/a/a;->j:Ljava/lang/Object;

    .line 6260
    invoke-virtual {v10, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 6261
    invoke-virtual {v0, v4}, Lcom/d/a/c;->a(Lcom/d/a/a;)V

    .line 6262
    iget-object v10, v6, Lcom/d/a/i;->g:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/d/a/a;->c()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6263
    if-eqz v8, :cond_5

    .line 6264
    const-string/jumbo v10, "Dispatcher"

    const-string/jumbo v11, "paused"

    iget-object v4, v4, Lcom/d/a/a;->b:Lcom/d/a/w;

    invoke-virtual {v4}, Lcom/d/a/w;->a()Ljava/lang/String;

    move-result-object v4

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "because tag \'"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "\' was paused"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v4, v12}, Lcom/d/a/ae;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6269
    :cond_5
    if-eqz v1, :cond_8

    .line 6270
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v4, v1

    :goto_3
    if-ltz v4, :cond_8

    .line 6271
    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/d/a/a;

    .line 9109
    iget-object v10, v1, Lcom/d/a/a;->j:Ljava/lang/Object;

    .line 6272
    invoke-virtual {v10, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 6276
    invoke-virtual {v0, v1}, Lcom/d/a/c;->a(Lcom/d/a/a;)V

    .line 6277
    iget-object v10, v6, Lcom/d/a/i;->g:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/d/a/a;->c()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6278
    if-eqz v8, :cond_6

    .line 6279
    const-string/jumbo v10, "Dispatcher"

    const-string/jumbo v11, "paused"

    iget-object v1, v1, Lcom/d/a/a;->b:Lcom/d/a/w;

    invoke-virtual {v1}, Lcom/d/a/w;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "because tag \'"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "\' was paused"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v1, v12}, Lcom/d/a/ae;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6270
    :cond_6
    add-int/lit8 v1, v4, -0x1

    move v4, v1

    goto :goto_3

    :cond_7
    move v1, v3

    .line 6253
    goto/16 :goto_2

    .line 6287
    :cond_8
    invoke-virtual {v0}, Lcom/d/a/c;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6288
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    .line 6289
    if-eqz v8, :cond_3

    .line 6290
    const-string/jumbo v1, "Dispatcher"

    const-string/jumbo v4, "canceled"

    invoke-static {v0}, Lcom/d/a/ae;->a(Lcom/d/a/c;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v8, "all actions paused"

    invoke-static {v1, v4, v0, v8}, Lcom/d/a/ae;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 495
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 496
    iget-object v1, p0, Lcom/d/a/i$a;->a:Lcom/d/a/i;

    invoke-virtual {v1, v0}, Lcom/d/a/i;->a(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 500
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/d/a/c;

    .line 501
    iget-object v1, p0, Lcom/d/a/i$a;->a:Lcom/d/a/i;

    .line 10366
    iget v2, v0, Lcom/d/a/c;->h:I

    .line 9368
    invoke-static {v2}, Lcom/d/a/p;->b(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 9369
    iget-object v2, v1, Lcom/d/a/i;->k:Lcom/d/a/d;

    .line 11362
    iget-object v3, v0, Lcom/d/a/c;->f:Ljava/lang/String;

    .line 12358
    iget-object v4, v0, Lcom/d/a/c;->m:Landroid/graphics/Bitmap;

    .line 9369
    invoke-interface {v2, v3, v4}, Lcom/d/a/d;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 9371
    :cond_9
    iget-object v2, v1, Lcom/d/a/i;->e:Ljava/util/Map;

    .line 12362
    iget-object v3, v0, Lcom/d/a/c;->f:Ljava/lang/String;

    .line 9371
    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9372
    invoke-virtual {v1, v0}, Lcom/d/a/i;->d(Lcom/d/a/c;)V

    .line 12378
    iget-object v1, v0, Lcom/d/a/c;->b:Lcom/d/a/t;

    .line 9373
    iget-boolean v1, v1, Lcom/d/a/t;->n:Z

    if-eqz v1, :cond_0

    .line 9374
    const-string/jumbo v1, "Dispatcher"

    const-string/jumbo v2, "batched"

    invoke-static {v0}, Lcom/d/a/ae;->a(Lcom/d/a/c;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "for completion"

    invoke-static {v1, v2, v0, v3}, Lcom/d/a/ae;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 505
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/d/a/c;

    .line 506
    iget-object v1, p0, Lcom/d/a/i$a;->a:Lcom/d/a/i;

    invoke-virtual {v1, v0}, Lcom/d/a/i;->c(Lcom/d/a/c;)V

    goto/16 :goto_0

    .line 510
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/d/a/c;

    .line 511
    iget-object v1, p0, Lcom/d/a/i$a;->a:Lcom/d/a/i;

    invoke-virtual {v1, v0, v3}, Lcom/d/a/i;->a(Lcom/d/a/c;Z)V

    goto/16 :goto_0

    .line 515
    :pswitch_8
    iget-object v0, p0, Lcom/d/a/i$a;->a:Lcom/d/a/i;

    .line 12379
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/d/a/i;->m:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 12380
    iget-object v2, v0, Lcom/d/a/i;->m:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 12381
    iget-object v2, v0, Lcom/d/a/i;->j:Landroid/os/Handler;

    iget-object v0, v0, Lcom/d/a/i;->j:Landroid/os/Handler;

    const/16 v3, 0x8

    invoke-virtual {v0, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 12382
    invoke-static {v1}, Lcom/d/a/i;->a(Ljava/util/List;)V

    goto/16 :goto_0

    .line 519
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/NetworkInfo;

    .line 520
    iget-object v1, p0, Lcom/d/a/i$a;->a:Lcom/d/a/i;

    invoke-virtual {v1, v0}, Lcom/d/a/i;->a(Landroid/net/NetworkInfo;)V

    goto/16 :goto_0

    .line 524
    :pswitch_a
    iget-object v1, p0, Lcom/d/a/i$a;->a:Lcom/d/a/i;

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_a

    move v0, v2

    .line 12395
    :goto_4
    iput-boolean v0, v1, Lcom/d/a/i;->p:Z

    goto/16 :goto_0

    :cond_a
    move v0, v3

    .line 524
    goto :goto_4

    .line 478
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
