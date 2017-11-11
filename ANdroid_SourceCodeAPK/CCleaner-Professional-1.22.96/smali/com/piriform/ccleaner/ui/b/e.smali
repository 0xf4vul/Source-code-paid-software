.class public final Lcom/piriform/ccleaner/ui/b/e;
.super Lcom/piriform/ccleaner/ui/b/m;
.source "SourceFile"


# instance fields
.field d:Z

.field e:Lcom/piriform/ccleaner/m/m;

.field f:Lcom/piriform/ccleaner/core/a/a;


# direct methods
.method public constructor <init>(Lcom/piriform/ccleaner/f/j;)V
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/piriform/ccleaner/core/a/g;->m:Lcom/piriform/ccleaner/core/a/g;

    invoke-direct {p0, p1, v0}, Lcom/piriform/ccleaner/ui/b/m;-><init>(Lcom/piriform/ccleaner/f/j;Lcom/piriform/ccleaner/core/a/g;)V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/piriform/ccleaner/ui/b/e;->d:Z

    .line 39
    invoke-static {}, Lcom/piriform/ccleaner/CCleanerApplication;->a()Lcom/piriform/ccleaner/j/bl;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/piriform/ccleaner/j/bl;->a(Lcom/piriform/ccleaner/ui/b/e;)V

    .line 40
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/ViewGroup;Landroid/content/Context;)Landroid/view/View;
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 44
    .line 1059
    iget-object v0, p0, Lcom/piriform/ccleaner/core/a/b;->c:Ljava/lang/Object;

    .line 44
    check-cast v0, Lcom/piriform/ccleaner/f/j;

    .line 47
    if-nez p1, :cond_1

    .line 48
    new-instance p1, Lcom/piriform/ccleaner/ui/view/h;

    invoke-direct {p1, p3}, Lcom/piriform/ccleaner/ui/view/h;-><init>(Landroid/content/Context;)V

    .line 53
    :goto_0
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 55
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/b/e;->e:Lcom/piriform/ccleaner/m/m;

    .line 1213
    iget-object v3, v0, Lcom/piriform/ccleaner/f/j;->a:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 55
    invoke-virtual {v1, v3}, Lcom/piriform/ccleaner/m/m;->c(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 56
    const/4 v1, 0x0

    .line 58
    invoke-virtual {p1}, Lcom/piriform/ccleaner/ui/view/h;->getIconView()Landroid/widget/ImageView;

    move-result-object v4

    .line 59
    if-nez v3, :cond_2

    .line 60
    const v5, 0x7f02014d

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 66
    :goto_1
    new-instance v4, Lcom/piriform/ccleaner/ui/view/c;

    invoke-direct {v4, p3}, Lcom/piriform/ccleaner/ui/view/c;-><init>(Landroid/content/Context;)V

    .line 67
    invoke-virtual {p1, v4}, Lcom/piriform/ccleaner/ui/view/h;->setContentView(Landroid/view/View;)V

    .line 2209
    iget-object v5, v0, Lcom/piriform/ccleaner/f/j;->a:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 69
    invoke-virtual {v4, v5}, Lcom/piriform/ccleaner/ui/view/c;->setMainText(Ljava/lang/String;)V

    .line 71
    const v5, 0x7f080062

    new-array v6, v11, [Ljava/lang/Object;

    .line 2231
    iget-wide v8, v0, Lcom/piriform/ccleaner/f/j;->c:J

    .line 71
    invoke-static {v8, v9}, Lcom/piriform/ccleaner/core/h;->a(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {v2, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 72
    invoke-virtual {v4, v5}, Lcom/piriform/ccleaner/ui/view/c;->a(Ljava/lang/CharSequence;)Landroid/view/View;

    .line 3108
    if-nez v3, :cond_3

    .line 3109
    sget-object v1, Lcom/piriform/ccleaner/core/data/a;->e:Lcom/piriform/ccleaner/core/data/a;

    .line 4019
    :goto_2
    iget v1, v1, Lcom/piriform/ccleaner/core/data/a;->f:I

    .line 74
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 75
    const v3, 0x7f080063

    new-array v5, v11, [Ljava/lang/Object;

    aput-object v1, v5, v10

    invoke-virtual {v2, v3, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-virtual {v4, v1}, Lcom/piriform/ccleaner/ui/view/c;->a(Ljava/lang/CharSequence;)Landroid/view/View;

    .line 78
    const v1, 0x7f080061

    new-array v3, v11, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/f/j;->b()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v10

    invoke-virtual {v2, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-virtual {v4, v1}, Lcom/piriform/ccleaner/ui/view/c;->a(Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object v1

    .line 80
    invoke-virtual {p0, v1}, Lcom/piriform/ccleaner/ui/b/e;->a(Landroid/view/View;)V

    .line 82
    invoke-virtual {p1, p0}, Lcom/piriform/ccleaner/ui/view/h;->setOnLockedChangedListener(Lcom/piriform/ccleaner/ui/view/h$a;)V

    .line 4247
    iget-boolean v2, v0, Lcom/piriform/ccleaner/f/j;->f:Z

    .line 83
    invoke-virtual {p1, v2}, Lcom/piriform/ccleaner/ui/view/h;->setLocked(Z)V

    .line 85
    invoke-virtual {p1}, Lcom/piriform/ccleaner/ui/view/h;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v2

    .line 86
    new-instance v3, Lcom/piriform/ccleaner/ui/b/e$1;

    invoke-direct {v3, p0}, Lcom/piriform/ccleaner/ui/b/e$1;-><init>(Lcom/piriform/ccleaner/ui/b/e;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 5247
    iget-boolean v0, v0, Lcom/piriform/ccleaner/f/j;->f:Z

    .line 92
    if-nez v0, :cond_0

    .line 6038
    iget-boolean v0, p0, Lcom/piriform/ccleaner/core/a/b;->a:Z

    .line 93
    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 96
    :cond_0
    new-instance v0, Lcom/piriform/ccleaner/ui/b/e$2;

    invoke-direct {v0, p0, v1}, Lcom/piriform/ccleaner/ui/b/e$2;-><init>(Lcom/piriform/ccleaner/ui/b/e;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Lcom/piriform/ccleaner/ui/view/h;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    return-object p1

    .line 50
    :cond_1
    check-cast p1, Lcom/piriform/ccleaner/ui/view/h;

    goto/16 :goto_0

    .line 62
    :cond_2
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/b/e;->e:Lcom/piriform/ccleaner/m/m;

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/piriform/ccleaner/m/m;->a(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 63
    iget-object v5, p0, Lcom/piriform/ccleaner/ui/b/e;->f:Lcom/piriform/ccleaner/core/a/a;

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v4, v6}, Lcom/piriform/ccleaner/core/a/a;->a(Landroid/widget/ImageView;Landroid/content/pm/ApplicationInfo;)V

    goto/16 :goto_1

    .line 3111
    :cond_3
    if-nez v1, :cond_4

    .line 3112
    sget-object v1, Lcom/piriform/ccleaner/core/data/a;->d:Lcom/piriform/ccleaner/core/data/a;

    goto :goto_2

    .line 3114
    :cond_4
    iget v5, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    iget v6, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    if-ge v5, v6, :cond_5

    .line 3115
    sget-object v1, Lcom/piriform/ccleaner/core/data/a;->c:Lcom/piriform/ccleaner/core/data/a;

    goto :goto_2

    .line 3117
    :cond_5
    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    if-le v3, v1, :cond_6

    .line 3118
    sget-object v1, Lcom/piriform/ccleaner/core/data/a;->b:Lcom/piriform/ccleaner/core/data/a;

    goto :goto_2

    .line 3120
    :cond_6
    sget-object v1, Lcom/piriform/ccleaner/core/data/a;->a:Lcom/piriform/ccleaner/core/data/a;

    goto :goto_2
.end method

.method final a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/piriform/ccleaner/ui/b/e;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 125
    return-void

    .line 124
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method
