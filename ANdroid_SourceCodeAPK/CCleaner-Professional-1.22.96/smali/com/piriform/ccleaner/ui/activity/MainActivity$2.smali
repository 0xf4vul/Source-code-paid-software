.class final Lcom/piriform/ccleaner/ui/activity/MainActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/piriform/ccleaner/ui/activity/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/piriform/ccleaner/ui/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/ui/activity/MainActivity;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity$2;->a:Lcom/piriform/ccleaner/ui/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 192
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity$2;->a:Lcom/piriform/ccleaner/ui/activity/MainActivity;

    iget-object v3, v0, Lcom/piriform/ccleaner/ui/activity/MainActivity;->q:Lcom/piriform/ccleaner/ui/activity/h;

    iget-object v0, p0, Lcom/piriform/ccleaner/ui/activity/MainActivity$2;->a:Lcom/piriform/ccleaner/ui/activity/MainActivity;

    invoke-static {v0}, Lcom/piriform/ccleaner/ui/activity/MainActivity;->b(Lcom/piriform/ccleaner/ui/activity/MainActivity;)Lcom/piriform/ccleaner/ui/main/h;

    move-result-object v0

    .line 1069
    iget-object v0, v0, Lcom/piriform/ccleaner/ui/main/h;->a:Lcom/piriform/ccleaner/core/a/h;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/core/a/h;->c()Ljava/util/List;

    move-result-object v0

    .line 1137
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/a/a/d;

    .line 1138
    invoke-interface {v0}, Lcom/piriform/ccleaner/a/a/d;->m()Lcom/piriform/ccleaner/a/h;

    move-result-object v0

    sget-object v5, Lcom/piriform/ccleaner/a/h;->d:Lcom/piriform/ccleaner/a/h;

    if-ne v0, v5, :cond_0

    move v0, v1

    .line 1130
    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, v3, Lcom/piriform/ccleaner/ui/activity/h;->a:Lcom/piriform/ccleaner/s/h;

    .line 1131
    invoke-interface {v0}, Lcom/piriform/ccleaner/s/h;->d()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v3, Lcom/piriform/ccleaner/ui/activity/h;->b:Lcom/piriform/ccleaner/cleaning/advanced/d;

    .line 1132
    invoke-virtual {v0}, Lcom/piriform/ccleaner/cleaning/advanced/d;->isAdvancedCleaningServiceEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v3, Lcom/piriform/ccleaner/ui/activity/h;->h:Lcom/piriform/ccleaner/b/b/b;

    .line 1133
    invoke-interface {v0}, Lcom/piriform/ccleaner/b/b/b;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 1120
    :goto_1
    if-eqz v0, :cond_3

    .line 1121
    iget-object v0, v3, Lcom/piriform/ccleaner/ui/activity/h;->e:Lcom/piriform/ccleaner/cleaning/advanced/l;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/cleaning/advanced/l;->startAdvancedCleaningService()V

    .line 1122
    iget-object v0, v3, Lcom/piriform/ccleaner/ui/activity/h;->i:Lcom/piriform/ccleaner/ui/activity/h$a;

    invoke-interface {v0}, Lcom/piriform/ccleaner/ui/activity/h$a;->r()V

    .line 1123
    iget-object v0, v3, Lcom/piriform/ccleaner/ui/activity/h;->f:Lcom/piriform/ccleaner/b/c/a;

    .line 2126
    iget-object v0, v0, Lcom/piriform/ccleaner/b/c/a;->a:Lcom/piriform/ccleaner/b/a;

    sget-object v1, Lcom/piriform/ccleaner/b/b;->A:Lcom/piriform/ccleaner/b/b;

    invoke-interface {v0, v1}, Lcom/piriform/ccleaner/b/a;->a(Lcom/piriform/ccleaner/b/b;)V

    .line 1123
    :goto_2
    return-void

    :cond_1
    move v0, v2

    .line 1142
    goto :goto_0

    :cond_2
    move v0, v2

    .line 1133
    goto :goto_1

    .line 1125
    :cond_3
    iget-object v0, v3, Lcom/piriform/ccleaner/ui/activity/h;->i:Lcom/piriform/ccleaner/ui/activity/h$a;

    invoke-interface {v0}, Lcom/piriform/ccleaner/ui/activity/h$a;->q()V

    goto :goto_2
.end method
