.class public abstract Lcom/piriform/ccleaner/ui/activity/b;
.super Lcom/piriform/ccleaner/ui/activity/a;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/a;
.implements Lcom/piriform/ccleaner/ui/fragment/aa$d;


# instance fields
.field protected m:Z

.field public n:Lcom/piriform/ccleaner/b/d;

.field public o:Lcom/piriform/ccleaner/g/a;

.field private p:Lcom/piriform/ccleaner/b/c/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/piriform/ccleaner/ui/activity/a;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/piriform/ccleaner/ui/activity/b;->m:Z

    .line 30
    new-instance v0, Lcom/piriform/ccleaner/g/a;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/g/a;-><init>(Lcom/piriform/ccleaner/a;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/activity/b;->o:Lcom/piriform/ccleaner/g/a;

    return-void
.end method


# virtual methods
.method public abstract f()Lcom/piriform/ccleaner/ui/fragment/n;
.end method

.method protected g()Lcom/piriform/ccleaner/ui/fragment/n;
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return-object v0
.end method

.method public final h()V
    .locals 4

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/activity/b;->c()Landroid/support/v4/app/m;

    move-result-object v1

    .line 84
    iget-boolean v0, p0, Lcom/piriform/ccleaner/ui/activity/b;->m:Z

    if-eqz v0, :cond_1

    .line 85
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/activity/b;->f()Lcom/piriform/ccleaner/ui/fragment/n;

    move-result-object v0

    .line 90
    :goto_0
    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v1}, Landroid/support/v4/app/m;->a()Landroid/support/v4/app/q;

    move-result-object v2

    .line 92
    const-string/jumbo v3, "first_subfolder"

    invoke-virtual {v1, v3}, Landroid/support/v4/app/m;->b(Ljava/lang/String;)V

    .line 93
    const v1, 0x7f100084

    invoke-virtual {v2, v1, v0}, Landroid/support/v4/app/q;->b(ILandroid/support/v4/app/h;)Landroid/support/v4/app/q;

    .line 94
    invoke-virtual {v2}, Landroid/support/v4/app/q;->a()I

    .line 95
    iget-boolean v0, p0, Lcom/piriform/ccleaner/ui/activity/b;->m:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/piriform/ccleaner/ui/activity/b;->m:Z

    .line 97
    :cond_0
    return-void

    .line 87
    :cond_1
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/activity/b;->g()Lcom/piriform/ccleaner/ui/fragment/n;

    move-result-object v0

    goto :goto_0

    .line 95
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final o_()V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/piriform/ccleaner/ui/activity/a;->onCreate(Landroid/os/Bundle;)V

    .line 36
    new-instance v0, Lcom/piriform/ccleaner/b/d;

    invoke-direct {v0}, Lcom/piriform/ccleaner/b/d;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/activity/b;->n:Lcom/piriform/ccleaner/b/d;

    .line 37
    new-instance v0, Lcom/piriform/ccleaner/b/c/a;

    invoke-static {p0}, Lcom/piriform/ccleaner/CCleanerApplication;->a(Landroid/content/Context;)Lcom/piriform/ccleaner/CCleanerApplication;

    move-result-object v1

    .line 1123
    iget-object v1, v1, Lcom/piriform/ccleaner/CCleanerApplication;->f:Lcom/piriform/ccleaner/b/a;

    .line 37
    invoke-direct {v0, v1}, Lcom/piriform/ccleaner/b/c/a;-><init>(Lcom/piriform/ccleaner/b/a;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/activity/b;->p:Lcom/piriform/ccleaner/b/c/a;

    .line 39
    const v0, 0x7f03001b

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/ui/activity/b;->setContentView(I)V

    .line 2049
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/activity/b;->c()Landroid/support/v4/app/m;

    move-result-object v0

    .line 2050
    invoke-virtual {v0}, Landroid/support/v4/app/m;->a()Landroid/support/v4/app/q;

    move-result-object v0

    .line 2051
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/activity/b;->f()Lcom/piriform/ccleaner/ui/fragment/n;

    move-result-object v1

    .line 2052
    const v2, 0x7f100084

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/app/q;->a(ILandroid/support/v4/app/h;)Landroid/support/v4/app/q;

    .line 2053
    invoke-virtual {v0}, Landroid/support/v4/app/q;->a()I

    .line 41
    return-void
.end method

.method protected onPause()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 105
    invoke-super {p0}, Lcom/piriform/ccleaner/ui/activity/a;->onPause()V

    .line 106
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/b;->p:Lcom/piriform/ccleaner/b/c/a;

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/activity/b;->n:Lcom/piriform/ccleaner/b/d;

    .line 3017
    iget-wide v2, v1, Lcom/piriform/ccleaner/b/d;->a:J

    .line 3072
    cmp-long v1, v2, v8

    if-lez v1, :cond_0

    .line 3073
    iget-object v0, v0, Lcom/piriform/ccleaner/b/c/a;->a:Lcom/piriform/ccleaner/b/a;

    sget-object v1, Lcom/piriform/ccleaner/b/b;->t:Lcom/piriform/ccleaner/b/b;

    const-string/jumbo v4, "Total"

    sget-object v5, Lcom/piriform/ccleaner/core/h;->c:Lcom/piriform/ccleaner/core/h;

    sget-object v6, Lcom/piriform/ccleaner/core/h;->a:Lcom/piriform/ccleaner/core/h;

    invoke-virtual {v5, v2, v3, v6}, Lcom/piriform/ccleaner/core/h;->b(JLcom/piriform/ccleaner/core/h;)J

    move-result-wide v2

    invoke-interface {v0, v1, v4, v2, v3}, Lcom/piriform/ccleaner/b/a;->a(Lcom/piriform/ccleaner/b/b;Ljava/lang/String;J)V

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/b;->n:Lcom/piriform/ccleaner/b/d;

    .line 4021
    iput-wide v8, v0, Lcom/piriform/ccleaner/b/d;->a:J

    .line 108
    return-void
.end method
