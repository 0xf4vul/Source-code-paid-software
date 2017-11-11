.class public final Lcom/piriform/ccleaner/ui/b/j;
.super Lcom/piriform/ccleaner/core/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/piriform/ccleaner/core/a/b",
        "<",
        "Lcom/piriform/ccleaner/core/data/d;",
        ">;"
    }
.end annotation


# instance fields
.field private final d:Z


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/core/data/d;)V
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/piriform/ccleaner/core/a/g;->h:Lcom/piriform/ccleaner/core/a/g;

    invoke-direct {p0, p1, v0}, Lcom/piriform/ccleaner/core/a/b;-><init>(Ljava/lang/Object;Lcom/piriform/ccleaner/core/a/g;)V

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/piriform/ccleaner/ui/b/j;->d:Z

    .line 24
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/ViewGroup;Landroid/content/Context;)Landroid/view/View;
    .locals 4

    .prologue
    .line 28
    .line 1059
    iget-object v0, p0, Lcom/piriform/ccleaner/core/a/b;->c:Ljava/lang/Object;

    .line 28
    check-cast v0, Lcom/piriform/ccleaner/core/data/d;

    .line 31
    if-nez p1, :cond_0

    .line 32
    new-instance p1, Lcom/piriform/ccleaner/ui/view/ListViewItem;

    invoke-direct {p1, p3}, Lcom/piriform/ccleaner/ui/view/ListViewItem;-><init>(Landroid/content/Context;)V

    .line 37
    :goto_0
    new-instance v1, Lcom/piriform/ccleaner/ui/view/d;

    invoke-direct {v1, p3}, Lcom/piriform/ccleaner/ui/view/d;-><init>(Landroid/content/Context;)V

    .line 38
    invoke-virtual {p1, v1}, Lcom/piriform/ccleaner/ui/view/ListViewItem;->setContentView(Landroid/view/View;)V

    .line 39
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/piriform/ccleaner/ui/view/ListViewItem;->setLongClickable(Z)V

    .line 41
    invoke-virtual {v0}, Lcom/piriform/ccleaner/core/data/d;->c()Ljava/lang/String;

    move-result-object v2

    .line 2048
    iget-object v3, v0, Lcom/piriform/ccleaner/core/data/f;->f:Ljava/lang/String;

    .line 41
    invoke-virtual {v1, v2, v3}, Lcom/piriform/ccleaner/ui/view/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-virtual {v0}, Lcom/piriform/ccleaner/core/data/d;->d()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/piriform/ccleaner/ui/view/d;->setDate(Ljava/util/Date;)V

    .line 44
    invoke-virtual {p1}, Lcom/piriform/ccleaner/ui/view/ListViewItem;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v1

    .line 45
    iget-boolean v2, p0, Lcom/piriform/ccleaner/ui/b/j;->d:Z

    if-eqz v2, :cond_1

    .line 46
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 3038
    iget-boolean v2, p0, Lcom/piriform/ccleaner/core/a/b;->a:Z

    .line 47
    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 48
    new-instance v2, Lcom/piriform/ccleaner/ui/b/j$1;

    invoke-direct {v2, p0}, Lcom/piriform/ccleaner/ui/b/j$1;-><init>(Lcom/piriform/ccleaner/ui/b/j;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 3087
    new-instance v2, Lcom/piriform/ccleaner/ui/b/j$2;

    invoke-direct {v2, p0, v1}, Lcom/piriform/ccleaner/ui/b/j$2;-><init>(Lcom/piriform/ccleaner/ui/b/j;Landroid/widget/CheckBox;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    :goto_1
    sget-object v1, Lcom/piriform/ccleaner/ui/b/j$3;->a:[I

    .line 4008
    iget-object v0, v0, Lcom/piriform/ccleaner/core/data/d;->a:Lcom/piriform/ccleaner/core/data/e;

    .line 62
    invoke-virtual {v0}, Lcom/piriform/ccleaner/core/data/e;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 76
    const v1, 0x7f02011c

    .line 77
    const/4 v0, 0x0

    .line 80
    :goto_2
    invoke-virtual {p1, v1}, Lcom/piriform/ccleaner/ui/view/ListViewItem;->setIcon(I)V

    .line 81
    invoke-virtual {p1, v0}, Lcom/piriform/ccleaner/ui/view/ListViewItem;->setIconContentDescription(I)V

    .line 83
    return-object p1

    .line 34
    :cond_0
    check-cast p1, Lcom/piriform/ccleaner/ui/view/ListViewItem;

    goto :goto_0

    .line 57
    :cond_1
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_1

    .line 64
    :pswitch_0
    const v1, 0x7f0200db

    .line 65
    const v0, 0x7f0800e8

    .line 66
    goto :goto_2

    .line 68
    :pswitch_1
    const v1, 0x7f0200d9

    .line 69
    const v0, 0x7f0800d9

    .line 70
    goto :goto_2

    .line 72
    :pswitch_2
    const v1, 0x7f0200da

    .line 73
    const v0, 0x7f0800cd

    .line 74
    goto :goto_2

    .line 62
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
