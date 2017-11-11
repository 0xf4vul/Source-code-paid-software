.class public final Lcom/piriform/ccleaner/ui/b/g;
.super Lcom/piriform/ccleaner/core/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/piriform/ccleaner/core/a/b",
        "<",
        "Lcom/piriform/ccleaner/core/data/AndroidPackage;",
        ">;"
    }
.end annotation


# instance fields
.field final d:Lcom/piriform/ccleaner/s/f;

.field e:Lcom/piriform/ccleaner/core/a/a;


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/core/data/AndroidPackage;)V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/piriform/ccleaner/ui/b/g;-><init>(Lcom/piriform/ccleaner/core/data/AndroidPackage;Lcom/piriform/ccleaner/s/f;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/piriform/ccleaner/core/data/AndroidPackage;Lcom/piriform/ccleaner/s/f;)V
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/piriform/ccleaner/core/a/g;->e:Lcom/piriform/ccleaner/core/a/g;

    invoke-direct {p0, p1, v0}, Lcom/piriform/ccleaner/core/a/b;-><init>(Ljava/lang/Object;Lcom/piriform/ccleaner/core/a/g;)V

    .line 35
    iput-object p2, p0, Lcom/piriform/ccleaner/ui/b/g;->d:Lcom/piriform/ccleaner/s/f;

    .line 36
    invoke-static {}, Lcom/piriform/ccleaner/CCleanerApplication;->a()Lcom/piriform/ccleaner/j/bl;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/piriform/ccleaner/j/bl;->a(Lcom/piriform/ccleaner/ui/b/g;)V

    .line 37
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/ViewGroup;Landroid/content/Context;)Landroid/view/View;
    .locals 6

    .prologue
    .line 41
    .line 1059
    iget-object v0, p0, Lcom/piriform/ccleaner/core/a/b;->c:Ljava/lang/Object;

    .line 41
    check-cast v0, Lcom/piriform/ccleaner/core/data/AndroidPackage;

    .line 44
    if-nez p1, :cond_1

    .line 45
    new-instance p1, Lcom/piriform/ccleaner/ui/view/ListViewItem;

    invoke-direct {p1, p3}, Lcom/piriform/ccleaner/ui/view/ListViewItem;-><init>(Landroid/content/Context;)V

    .line 50
    :goto_0
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/b/g;->d:Lcom/piriform/ccleaner/s/f;

    if-eqz v1, :cond_0

    .line 51
    new-instance v1, Lcom/piriform/ccleaner/ui/b/g$1;

    invoke-direct {v1, p0, v0}, Lcom/piriform/ccleaner/ui/b/g$1;-><init>(Lcom/piriform/ccleaner/ui/b/g;Lcom/piriform/ccleaner/core/data/AndroidPackage;)V

    invoke-virtual {p1, v1}, Lcom/piriform/ccleaner/ui/view/ListViewItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    :cond_0
    new-instance v1, Lcom/piriform/ccleaner/ui/view/c;

    invoke-direct {v1, p3}, Lcom/piriform/ccleaner/ui/view/c;-><init>(Landroid/content/Context;)V

    .line 60
    invoke-virtual {p1, v1}, Lcom/piriform/ccleaner/ui/view/ListViewItem;->setContentView(Landroid/view/View;)V

    .line 1103
    iget-object v2, v0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->a:Ljava/lang/String;

    .line 62
    invoke-virtual {v1, v2}, Lcom/piriform/ccleaner/ui/view/c;->setMainText(Ljava/lang/String;)V

    .line 1123
    iget-wide v2, v0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->e:J

    .line 1178
    iget-wide v4, v0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->k:J

    .line 64
    add-long/2addr v2, v4

    .line 65
    invoke-static {v2, v3}, Lcom/piriform/ccleaner/core/h;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/piriform/ccleaner/ui/view/c;->a(Ljava/lang/CharSequence;)Landroid/view/View;

    .line 67
    invoke-virtual {p1}, Lcom/piriform/ccleaner/ui/view/ListViewItem;->getIconView()Landroid/widget/ImageView;

    move-result-object v1

    .line 68
    iget-object v2, p0, Lcom/piriform/ccleaner/ui/b/g;->e:Lcom/piriform/ccleaner/core/a/a;

    .line 1223
    iget-object v0, v0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->d:Landroid/content/pm/ApplicationInfo;

    .line 68
    invoke-virtual {v2, v1, v0}, Lcom/piriform/ccleaner/core/a/a;->a(Landroid/widget/ImageView;Landroid/content/pm/ApplicationInfo;)V

    .line 70
    const v0, 0x7f0200fb

    invoke-virtual {p1, v0}, Lcom/piriform/ccleaner/ui/view/ListViewItem;->setRightIcon(I)V

    .line 72
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/piriform/ccleaner/ui/view/ListViewItem;->setCheckable(Z)V

    .line 74
    return-object p1

    .line 47
    :cond_1
    check-cast p1, Lcom/piriform/ccleaner/ui/view/ListViewItem;

    goto :goto_0
.end method
