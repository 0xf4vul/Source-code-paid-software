.class final Lcom/piriform/ccleaner/ui/activity/h$1;
.super Lcom/piriform/ccleaner/p/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/ui/activity/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/piriform/ccleaner/p/b",
        "<",
        "Lcom/piriform/ccleaner/b/b/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/ui/activity/h;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/ui/activity/h;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/activity/h$1;->a:Lcom/piriform/ccleaner/ui/activity/h;

    invoke-direct {p0}, Lcom/piriform/ccleaner/p/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNext(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 64
    check-cast p1, Lcom/piriform/ccleaner/b/b/b;

    .line 1067
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/h$1;->a:Lcom/piriform/ccleaner/ui/activity/h;

    .line 2025
    iput-object p1, v0, Lcom/piriform/ccleaner/ui/activity/h;->h:Lcom/piriform/ccleaner/b/b/b;

    .line 1069
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/h$1;->a:Lcom/piriform/ccleaner/ui/activity/h;

    .line 3078
    invoke-interface {p1}, Lcom/piriform/ccleaner/b/b/b;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3079
    iget-object v0, v0, Lcom/piriform/ccleaner/ui/activity/h;->i:Lcom/piriform/ccleaner/ui/activity/h$a;

    invoke-interface {v0}, Lcom/piriform/ccleaner/ui/activity/h$a;->i()V

    .line 1070
    :goto_0
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/h$1;->a:Lcom/piriform/ccleaner/ui/activity/h;

    .line 4086
    invoke-interface {p1}, Lcom/piriform/ccleaner/b/b/b;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4087
    iget-object v0, v0, Lcom/piriform/ccleaner/ui/activity/h;->i:Lcom/piriform/ccleaner/ui/activity/h$a;

    invoke-interface {v0}, Lcom/piriform/ccleaner/ui/activity/h$a;->k()V

    .line 1071
    :goto_1
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/h$1;->a:Lcom/piriform/ccleaner/ui/activity/h;

    .line 5094
    invoke-interface {p1}, Lcom/piriform/ccleaner/b/b/b;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5095
    iget-object v0, v0, Lcom/piriform/ccleaner/ui/activity/h;->i:Lcom/piriform/ccleaner/ui/activity/h$a;

    invoke-interface {v0}, Lcom/piriform/ccleaner/ui/activity/h$a;->m()V

    .line 1072
    :goto_2
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/h$1;->a:Lcom/piriform/ccleaner/ui/activity/h;

    .line 6102
    invoke-interface {p1}, Lcom/piriform/ccleaner/b/b/b;->f()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6103
    iget-object v0, v0, Lcom/piriform/ccleaner/ui/activity/h;->i:Lcom/piriform/ccleaner/ui/activity/h$a;

    invoke-interface {v0}, Lcom/piriform/ccleaner/ui/activity/h$a;->s()V

    :goto_3
    return-void

    .line 3081
    :cond_0
    iget-object v0, v0, Lcom/piriform/ccleaner/ui/activity/h;->i:Lcom/piriform/ccleaner/ui/activity/h$a;

    invoke-interface {v0}, Lcom/piriform/ccleaner/ui/activity/h$a;->j()V

    goto :goto_0

    .line 4089
    :cond_1
    iget-object v0, v0, Lcom/piriform/ccleaner/ui/activity/h;->i:Lcom/piriform/ccleaner/ui/activity/h$a;

    invoke-interface {v0}, Lcom/piriform/ccleaner/ui/activity/h$a;->l()V

    goto :goto_1

    .line 5097
    :cond_2
    iget-object v0, v0, Lcom/piriform/ccleaner/ui/activity/h;->i:Lcom/piriform/ccleaner/ui/activity/h$a;

    invoke-interface {v0}, Lcom/piriform/ccleaner/ui/activity/h$a;->n()V

    goto :goto_2

    .line 6105
    :cond_3
    iget-object v0, v0, Lcom/piriform/ccleaner/ui/activity/h;->i:Lcom/piriform/ccleaner/ui/activity/h$a;

    invoke-interface {v0}, Lcom/piriform/ccleaner/ui/activity/h$a;->t()V

    goto :goto_3
.end method
