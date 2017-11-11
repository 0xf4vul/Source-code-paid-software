.class final Lcom/d/a/t$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/d/a/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 13

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 110
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 137
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unknown handler message received: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 112
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 114
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    move v6, v2

    :goto_0
    if-ge v6, v7, :cond_6

    .line 115
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/d/a/c;

    .line 116
    iget-object v8, v1, Lcom/d/a/c;->b:Lcom/d/a/t;

    .line 2374
    iget-object v9, v1, Lcom/d/a/c;->k:Lcom/d/a/a;

    .line 2382
    iget-object v10, v1, Lcom/d/a/c;->l:Ljava/util/List;

    .line 1496
    if-eqz v10, :cond_2

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    move v5, v4

    .line 1497
    :goto_1
    if-nez v9, :cond_0

    if-eqz v5, :cond_3

    :cond_0
    move v3, v4

    .line 1499
    :goto_2
    if-eqz v3, :cond_4

    .line 3370
    iget-object v3, v1, Lcom/d/a/c;->g:Lcom/d/a/w;

    .line 1503
    iget-object v3, v3, Lcom/d/a/w;->d:Landroid/net/Uri;

    .line 3386
    iget-object v3, v1, Lcom/d/a/c;->p:Ljava/lang/Exception;

    .line 4358
    iget-object v11, v1, Lcom/d/a/c;->m:Landroid/graphics/Bitmap;

    .line 4390
    iget-object v12, v1, Lcom/d/a/c;->o:Lcom/d/a/t$d;

    .line 1508
    if-eqz v9, :cond_1

    .line 1509
    invoke-virtual {v8, v11, v12, v9}, Lcom/d/a/t;->a(Landroid/graphics/Bitmap;Lcom/d/a/t$d;Lcom/d/a/a;)V

    .line 1512
    :cond_1
    if-eqz v5, :cond_4

    .line 1514
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v5

    move v3, v2

    :goto_3
    if-ge v3, v5, :cond_4

    .line 1515
    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/d/a/a;

    .line 1516
    invoke-virtual {v8, v11, v12, v1}, Lcom/d/a/t;->a(Landroid/graphics/Bitmap;Lcom/d/a/t$d;Lcom/d/a/a;)V

    .line 1514
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_3

    :cond_2
    move v5, v2

    .line 1496
    goto :goto_1

    :cond_3
    move v3, v2

    .line 1497
    goto :goto_2

    .line 114
    :cond_4
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_0

    .line 121
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/d/a/a;

    .line 5101
    iget-object v1, v0, Lcom/d/a/a;->a:Lcom/d/a/t;

    .line 122
    iget-boolean v1, v1, Lcom/d/a/t;->n:Z

    if-eqz v1, :cond_5

    .line 123
    const-string/jumbo v1, "Main"

    const-string/jumbo v2, "canceled"

    iget-object v3, v0, Lcom/d/a/a;->b:Lcom/d/a/w;

    invoke-virtual {v3}, Lcom/d/a/w;->a()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "target got garbage collected"

    invoke-static {v1, v2, v3, v4}, Lcom/d/a/ae;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_5
    iget-object v1, v0, Lcom/d/a/a;->a:Lcom/d/a/t;

    invoke-virtual {v0}, Lcom/d/a/a;->c()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/d/a/t;->a(Lcom/d/a/t;Ljava/lang/Object;)V

    .line 135
    :cond_6
    return-void

    .line 129
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 131
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    move v3, v2

    :goto_4
    if-ge v3, v4, :cond_6

    .line 132
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/d/a/a;

    .line 133
    iget-object v5, v1, Lcom/d/a/a;->a:Lcom/d/a/t;

    .line 5526
    const/4 v2, 0x0

    .line 5527
    iget v6, v1, Lcom/d/a/a;->e:I

    invoke-static {v6}, Lcom/d/a/p;->a(I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 6081
    iget-object v2, v1, Lcom/d/a/a;->i:Ljava/lang/String;

    .line 5528
    invoke-virtual {v5, v2}, Lcom/d/a/t;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 5531
    :cond_7
    if-eqz v2, :cond_9

    .line 5533
    sget-object v6, Lcom/d/a/t$d;->a:Lcom/d/a/t$d;

    invoke-virtual {v5, v2, v6, v1}, Lcom/d/a/t;->a(Landroid/graphics/Bitmap;Lcom/d/a/t$d;Lcom/d/a/a;)V

    .line 5534
    iget-boolean v2, v5, Lcom/d/a/t;->n:Z

    if-eqz v2, :cond_8

    .line 5535
    const-string/jumbo v2, "Main"

    const-string/jumbo v5, "completed"

    iget-object v1, v1, Lcom/d/a/a;->b:Lcom/d/a/w;

    invoke-virtual {v1}, Lcom/d/a/w;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "from "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/d/a/t$d;->a:Lcom/d/a/t$d;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v1, v6}, Lcom/d/a/ae;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :cond_8
    :goto_5
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_4

    .line 5539
    :cond_9
    invoke-virtual {v5, v1}, Lcom/d/a/t;->a(Lcom/d/a/a;)V

    .line 5540
    iget-boolean v2, v5, Lcom/d/a/t;->n:Z

    if-eqz v2, :cond_8

    .line 5541
    const-string/jumbo v2, "Main"

    const-string/jumbo v5, "resumed"

    iget-object v1, v1, Lcom/d/a/a;->b:Lcom/d/a/w;

    invoke-virtual {v1}, Lcom/d/a/w;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v5, v1}, Lcom/d/a/ae;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 110
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x8 -> :sswitch_0
        0xd -> :sswitch_2
    .end sparse-switch
.end method
