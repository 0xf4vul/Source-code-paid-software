.class public final Lcom/piriform/ccleaner/ui/b/w;
.super Lcom/piriform/ccleaner/core/a/b;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/ui/view/h$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/piriform/ccleaner/core/a/b",
        "<",
        "Lcom/piriform/ccleaner/core/data/i;",
        ">;",
        "Lcom/piriform/ccleaner/ui/view/h$a;"
    }
.end annotation


# instance fields
.field public d:Z

.field e:Lcom/piriform/ccleaner/core/a/a;

.field private final f:Z


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/core/data/i;Z)V
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/piriform/ccleaner/core/a/g;->k:Lcom/piriform/ccleaner/core/a/g;

    invoke-direct {p0, p1, v0}, Lcom/piriform/ccleaner/core/a/b;-><init>(Ljava/lang/Object;Lcom/piriform/ccleaner/core/a/g;)V

    .line 35
    iput-boolean p2, p0, Lcom/piriform/ccleaner/ui/b/w;->f:Z

    .line 36
    invoke-static {}, Lcom/piriform/ccleaner/CCleanerApplication;->a()Lcom/piriform/ccleaner/j/bl;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/piriform/ccleaner/j/bl;->a(Lcom/piriform/ccleaner/ui/b/w;)V

    .line 37
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/ViewGroup;Landroid/content/Context;)Landroid/view/View;
    .locals 4

    .prologue
    .line 41
    .line 1059
    iget-object v0, p0, Lcom/piriform/ccleaner/core/a/b;->c:Ljava/lang/Object;

    .line 41
    check-cast v0, Lcom/piriform/ccleaner/core/data/i;

    .line 44
    if-nez p1, :cond_1

    .line 45
    new-instance p1, Lcom/piriform/ccleaner/ui/view/h;

    invoke-direct {p1, p3}, Lcom/piriform/ccleaner/ui/view/h;-><init>(Landroid/content/Context;)V

    .line 50
    :goto_0
    new-instance v1, Lcom/piriform/ccleaner/ui/view/c;

    invoke-direct {v1, p3}, Lcom/piriform/ccleaner/ui/view/c;-><init>(Landroid/content/Context;)V

    .line 51
    invoke-virtual {p1, v1}, Lcom/piriform/ccleaner/ui/view/h;->setContentView(Landroid/view/View;)V

    .line 1065
    iget-object v2, v0, Lcom/piriform/ccleaner/core/data/i;->c:Ljava/lang/String;

    .line 53
    invoke-virtual {v1, v2}, Lcom/piriform/ccleaner/ui/view/c;->setMainText(Ljava/lang/String;)V

    .line 1069
    iget-wide v2, v0, Lcom/piriform/ccleaner/core/data/i;->d:J

    .line 54
    invoke-static {v2, v3}, Lcom/piriform/ccleaner/core/h;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/piriform/ccleaner/ui/view/c;->a(Ljava/lang/CharSequence;)Landroid/view/View;

    .line 56
    invoke-virtual {p1}, Lcom/piriform/ccleaner/ui/view/h;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v1

    .line 57
    iget-boolean v2, p0, Lcom/piriform/ccleaner/ui/b/w;->f:Z

    if-eqz v2, :cond_2

    .line 58
    invoke-virtual {p1, p0}, Lcom/piriform/ccleaner/ui/view/h;->setOnLockedChangedListener(Lcom/piriform/ccleaner/ui/view/h$a;)V

    .line 1081
    iget-boolean v2, v0, Lcom/piriform/ccleaner/core/data/i;->f:Z

    .line 59
    invoke-virtual {p1, v2}, Lcom/piriform/ccleaner/ui/view/h;->setLocked(Z)V

    .line 61
    new-instance v2, Lcom/piriform/ccleaner/ui/b/w$1;

    invoke-direct {v2, p0}, Lcom/piriform/ccleaner/ui/b/w$1;-><init>(Lcom/piriform/ccleaner/ui/b/w;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2081
    iget-boolean v2, v0, Lcom/piriform/ccleaner/core/data/i;->f:Z

    .line 67
    if-nez v2, :cond_0

    .line 3038
    iget-boolean v2, p0, Lcom/piriform/ccleaner/core/a/b;->a:Z

    .line 68
    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 3083
    :cond_0
    new-instance v2, Lcom/piriform/ccleaner/ui/b/w$2;

    invoke-direct {v2, p0, v1}, Lcom/piriform/ccleaner/ui/b/w$2;-><init>(Lcom/piriform/ccleaner/ui/b/w;Landroid/widget/CheckBox;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    :goto_1
    invoke-virtual {p1}, Lcom/piriform/ccleaner/ui/view/h;->getIconView()Landroid/widget/ImageView;

    move-result-object v1

    .line 76
    iget-object v2, p0, Lcom/piriform/ccleaner/ui/b/w;->e:Lcom/piriform/ccleaner/core/a/a;

    .line 4077
    iget-object v0, v0, Lcom/piriform/ccleaner/core/data/i;->e:Landroid/content/pm/ApplicationInfo;

    .line 76
    invoke-virtual {v2, v1, v0}, Lcom/piriform/ccleaner/core/a/a;->a(Landroid/widget/ImageView;Landroid/content/pm/ApplicationInfo;)V

    .line 78
    iget-boolean v0, p0, Lcom/piriform/ccleaner/ui/b/w;->d:Z

    invoke-virtual {p1, v0}, Lcom/piriform/ccleaner/ui/view/h;->setDividerVisible(Z)V

    .line 79
    return-object p1

    .line 47
    :cond_1
    check-cast p1, Lcom/piriform/ccleaner/ui/view/h;

    goto :goto_0

    .line 72
    :cond_2
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_1
.end method

.method public final a(Landroid/view/View;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 95
    .line 5016
    const v0, 0x7f10006c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 95
    check-cast v0, Landroid/widget/CheckBox;

    .line 96
    if-nez p2, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 97
    if-eqz p2, :cond_0

    .line 98
    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 100
    :cond_0
    return-void

    :cond_1
    move v1, v2

    .line 96
    goto :goto_0
.end method
