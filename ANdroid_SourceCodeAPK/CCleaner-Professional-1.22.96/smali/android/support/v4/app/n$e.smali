.class final Landroid/support/v4/app/n$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/h$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation


# instance fields
.field final a:Z

.field final b:Landroid/support/v4/app/c;

.field c:I


# direct methods
.method constructor <init>(Landroid/support/v4/app/c;Z)V
    .locals 0

    .prologue
    .line 3548
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3549
    iput-boolean p2, p0, Landroid/support/v4/app/n$e;->a:Z

    .line 3550
    iput-object p1, p0, Landroid/support/v4/app/n$e;->b:Landroid/support/v4/app/c;

    .line 3551
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 3560
    iget v0, p0, Landroid/support/v4/app/n$e;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v4/app/n$e;->c:I

    .line 3561
    iget v0, p0, Landroid/support/v4/app/n$e;->c:I

    if-eqz v0, :cond_0

    .line 3565
    :goto_0
    return-void

    .line 3564
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/n$e;->b:Landroid/support/v4/app/c;

    iget-object v0, v0, Landroid/support/v4/app/c;->b:Landroid/support/v4/app/n;

    invoke-static {v0}, Landroid/support/v4/app/n;->a(Landroid/support/v4/app/n;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 3574
    iget v0, p0, Landroid/support/v4/app/n$e;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/app/n$e;->c:I

    .line 3575
    return-void
.end method

.method public final c()V
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3591
    iget v0, p0, Landroid/support/v4/app/n$e;->c:I

    if-lez v0, :cond_2

    move v1, v2

    .line 3592
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/n$e;->b:Landroid/support/v4/app/c;

    iget-object v5, v0, Landroid/support/v4/app/c;->b:Landroid/support/v4/app/n;

    .line 3593
    iget-object v0, v5, Landroid/support/v4/app/n;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v4, v3

    .line 3594
    :goto_1
    if-ge v4, v6, :cond_5

    .line 3595
    iget-object v0, v5, Landroid/support/v4/app/n;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/h;

    .line 3596
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/support/v4/app/h;->a(Landroid/support/v4/app/h$c;)V

    .line 3597
    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/support/v4/app/h;->G()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 4023
    iget-object v7, v0, Landroid/support/v4/app/h;->z:Landroid/support/v4/app/n;

    if-eqz v7, :cond_0

    iget-object v7, v0, Landroid/support/v4/app/h;->z:Landroid/support/v4/app/n;

    iget-object v7, v7, Landroid/support/v4/app/n;->n:Landroid/support/v4/app/l;

    if-nez v7, :cond_3

    .line 4024
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/h;->y()Landroid/support/v4/app/h$a;

    move-result-object v0

    iput-boolean v3, v0, Landroid/support/v4/app/h$a;->p:Z

    .line 3594
    :cond_1
    :goto_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_2
    move v1, v3

    .line 3591
    goto :goto_0

    .line 4025
    :cond_3
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v7

    iget-object v8, v0, Landroid/support/v4/app/h;->z:Landroid/support/v4/app/n;

    iget-object v8, v8, Landroid/support/v4/app/n;->n:Landroid/support/v4/app/l;

    .line 4202
    iget-object v8, v8, Landroid/support/v4/app/l;->d:Landroid/os/Handler;

    .line 4025
    invoke-virtual {v8}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v8

    if-eq v7, v8, :cond_4

    .line 4026
    iget-object v7, v0, Landroid/support/v4/app/h;->z:Landroid/support/v4/app/n;

    iget-object v7, v7, Landroid/support/v4/app/n;->n:Landroid/support/v4/app/l;

    .line 5202
    iget-object v7, v7, Landroid/support/v4/app/l;->d:Landroid/os/Handler;

    .line 4026
    new-instance v8, Landroid/support/v4/app/h$1;

    invoke-direct {v8, v0}, Landroid/support/v4/app/h$1;-><init>(Landroid/support/v4/app/h;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 4033
    :cond_4
    invoke-virtual {v0}, Landroid/support/v4/app/h;->w()V

    goto :goto_2

    .line 3601
    :cond_5
    iget-object v0, p0, Landroid/support/v4/app/n$e;->b:Landroid/support/v4/app/c;

    iget-object v0, v0, Landroid/support/v4/app/c;->b:Landroid/support/v4/app/n;

    iget-object v4, p0, Landroid/support/v4/app/n$e;->b:Landroid/support/v4/app/c;

    iget-boolean v5, p0, Landroid/support/v4/app/n$e;->a:Z

    if-nez v1, :cond_6

    move v3, v2

    :cond_6
    invoke-static {v0, v4, v5, v3, v2}, Landroid/support/v4/app/n;->a(Landroid/support/v4/app/n;Landroid/support/v4/app/c;ZZZ)V

    .line 3602
    return-void
.end method

.method public final d()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3609
    iget-object v0, p0, Landroid/support/v4/app/n$e;->b:Landroid/support/v4/app/c;

    iget-object v0, v0, Landroid/support/v4/app/c;->b:Landroid/support/v4/app/n;

    iget-object v1, p0, Landroid/support/v4/app/n$e;->b:Landroid/support/v4/app/c;

    iget-boolean v2, p0, Landroid/support/v4/app/n$e;->a:Z

    invoke-static {v0, v1, v2, v3, v3}, Landroid/support/v4/app/n;->a(Landroid/support/v4/app/n;Landroid/support/v4/app/c;ZZZ)V

    .line 3610
    return-void
.end method
