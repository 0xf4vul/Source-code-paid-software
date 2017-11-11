.class public Lcom/piriform/ccleaner/ui/main/o;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/ui/main/j;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# static fields
.field public static final a:J


# instance fields
.field b:Lcom/piriform/ccleaner/m/m;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/view/View;

.field private final e:Landroid/view/View;

.field private final f:Landroid/view/View;

.field private final g:Landroid/view/View;

.field private final h:Lcom/piriform/ccleaner/a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 41
    sget-object v0, Lcom/piriform/ccleaner/core/h;->a:Lcom/piriform/ccleaner/core/h;

    const-wide/16 v2, 0x96

    sget-object v1, Lcom/piriform/ccleaner/core/h;->c:Lcom/piriform/ccleaner/core/h;

    invoke-virtual {v0, v2, v3, v1}, Lcom/piriform/ccleaner/core/h;->b(JLcom/piriform/ccleaner/core/h;)J

    move-result-wide v0

    sput-wide v0, Lcom/piriform/ccleaner/ui/main/o;->a:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/piriform/ccleaner/a;)V
    .locals 3

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 54
    invoke-static {}, Lcom/piriform/ccleaner/CCleanerApplication;->a()Lcom/piriform/ccleaner/j/bl;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/piriform/ccleaner/j/bl;->a(Lcom/piriform/ccleaner/ui/main/o;)V

    .line 56
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030061

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1016
    const v0, 0x7f1000c8

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 58
    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/main/o;->c:Landroid/widget/TextView;

    .line 2016
    const v0, 0x7f100113

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 59
    iput-object v0, p0, Lcom/piriform/ccleaner/ui/main/o;->d:Landroid/view/View;

    .line 3016
    const v0, 0x7f100112

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 60
    iput-object v0, p0, Lcom/piriform/ccleaner/ui/main/o;->e:Landroid/view/View;

    .line 4016
    const v0, 0x7f100114

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 61
    iput-object v0, p0, Lcom/piriform/ccleaner/ui/main/o;->f:Landroid/view/View;

    .line 5016
    const v0, 0x7f100111

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 62
    iput-object v0, p0, Lcom/piriform/ccleaner/ui/main/o;->g:Landroid/view/View;

    .line 64
    iput-object p2, p0, Lcom/piriform/ccleaner/ui/main/o;->h:Lcom/piriform/ccleaner/a;

    .line 66
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/ui/main/o;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    return-void
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 34
    invoke-static {p0, p1}, Lcom/piriform/ccleaner/ui/main/o;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/piriform/ccleaner/ui/main/o;)Lcom/piriform/ccleaner/a;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/o;->h:Lcom/piriform/ccleaner/a;

    return-object v0
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 4

    .prologue
    .line 34
    .line 7149
    invoke-static {p0}, Lcom/piriform/ccleaner/CCleanerApplication;->a(Landroid/content/Context;)Lcom/piriform/ccleaner/CCleanerApplication;

    move-result-object v0

    .line 8123
    iget-object v0, v0, Lcom/piriform/ccleaner/CCleanerApplication;->f:Lcom/piriform/ccleaner/b/a;

    .line 7150
    sget-object v1, Lcom/piriform/ccleaner/b/b;->k:Lcom/piriform/ccleaner/b/b;

    sget-object v2, Lcom/piriform/ccleaner/core/h;->c:Lcom/piriform/ccleaner/core/h;

    sget-object v3, Lcom/piriform/ccleaner/core/h;->a:Lcom/piriform/ccleaner/core/h;

    invoke-virtual {v2, p2, p3, v3}, Lcom/piriform/ccleaner/core/h;->b(JLcom/piriform/ccleaner/core/h;)J

    move-result-wide v2

    invoke-interface {v0, v1, p1, v2, v3}, Lcom/piriform/ccleaner/b/a;->a(Lcom/piriform/ccleaner/b/b;Ljava/lang/String;J)V

    .line 34
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;J)Z
    .locals 9

    .prologue
    .line 110
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/o;->b:Lcom/piriform/ccleaner/m/m;

    invoke-static {v0, p4}, Lcom/piriform/ccleaner/ui/main/o;->a(Lcom/piriform/ccleaner/m/m;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 112
    const/4 v0, 0x0

    .line 116
    :goto_0
    return v0

    .line 5121
    :cond_0
    new-instance v1, Lcom/piriform/ccleaner/ui/main/o$1;

    move-object v2, p0

    move-object v3, p4

    move-object v4, p2

    move-object v5, p1

    move-wide v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/piriform/ccleaner/ui/main/o$1;-><init>(Lcom/piriform/ccleaner/ui/main/o;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;J)V

    invoke-virtual {p3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static a(Lcom/piriform/ccleaner/m/m;J)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 173
    sget-wide v2, Lcom/piriform/ccleaner/ui/main/o;->a:J

    cmp-long v2, p1, v2

    if-ltz v2, :cond_2

    .line 6168
    const-string/jumbo v2, "com.facebook.katana"

    invoke-static {p0, v2}, Lcom/piriform/ccleaner/ui/main/o;->a(Lcom/piriform/ccleaner/m/m;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "com.twitter.android"

    invoke-static {p0, v2}, Lcom/piriform/ccleaner/ui/main/o;->a(Lcom/piriform/ccleaner/m/m;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "com.google.android.apps.plus"

    .line 6169
    invoke-static {p0, v2}, Lcom/piriform/ccleaner/ui/main/o;->a(Lcom/piriform/ccleaner/m/m;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v2, v0

    .line 173
    :goto_0
    if-eqz v2, :cond_2

    :goto_1
    return v0

    :cond_1
    move v2, v1

    .line 6169
    goto :goto_0

    :cond_2
    move v0, v1

    .line 173
    goto :goto_1
.end method

.method private static a(Lcom/piriform/ccleaner/m/m;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 163
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/piriform/ccleaner/ui/main/o;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 6088
    iget-object v2, p0, Lcom/piriform/ccleaner/m/m;->a:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v1, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 154
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 155
    const-string/jumbo v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    const-string/jumbo v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    return-object v0
.end method


# virtual methods
.method public final a(Lcom/piriform/ccleaner/core/a/b;Lcom/piriform/ccleaner/core/a/o;)V
    .locals 11

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 71
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/main/o;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 5059
    iget-object v0, p1, Lcom/piriform/ccleaner/core/a/b;->c:Ljava/lang/Object;

    .line 73
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 74
    invoke-static {v6, v7}, Lcom/piriform/ccleaner/core/h;->a(J)Ljava/lang/String;

    move-result-object v0

    .line 75
    const v2, 0x7f08016e

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v0, v3, v9

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 77
    iget-object v3, p0, Lcom/piriform/ccleaner/ui/main/o;->c:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    const v2, 0x7f080114

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v0, v3, v9

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 80
    const v3, 0x7f080263

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 81
    const v4, 0x7f080262

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v9

    aput-object v3, v5, v8

    invoke-virtual {v1, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 83
    const v2, 0x7f080264

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v0, v3, v9

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 87
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/main/o;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 89
    iget-object v4, p0, Lcom/piriform/ccleaner/ui/main/o;->d:Landroid/view/View;

    const-string/jumbo v5, "com.facebook.katana"

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/piriform/ccleaner/ui/main/o;->a(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v8

    .line 93
    :goto_0
    iget-object v4, p0, Lcom/piriform/ccleaner/ui/main/o;->e:Landroid/view/View;

    const-string/jumbo v5, "com.twitter.android"

    move-object v1, p0

    move-object v3, v10

    invoke-direct/range {v1 .. v7}, Lcom/piriform/ccleaner/ui/main/o;->a(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    add-int/lit8 v0, v0, 0x1

    .line 97
    :cond_0
    iget-object v4, p0, Lcom/piriform/ccleaner/ui/main/o;->f:Landroid/view/View;

    const-string/jumbo v5, "com.google.android.apps.plus"

    move-object v1, p0

    move-object v3, v10

    invoke-direct/range {v1 .. v7}, Lcom/piriform/ccleaner/ui/main/o;->a(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    add-int/lit8 v0, v0, 0x1

    .line 101
    :cond_1
    if-lez v0, :cond_2

    .line 102
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/o;->g:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 106
    :goto_1
    return-void

    .line 104
    :cond_2
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/main/o;->g:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_3
    move v0, v9

    goto :goto_0
.end method
