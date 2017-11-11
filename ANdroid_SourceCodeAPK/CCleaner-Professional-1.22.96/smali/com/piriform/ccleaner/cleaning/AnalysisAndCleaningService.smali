.class public Lcom/piriform/ccleaner/cleaning/AnalysisAndCleaningService;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/cleaning/a$a;


# instance fields
.field a:Lcom/piriform/ccleaner/a/e;

.field b:Lcom/piriform/ccleaner/b;

.field c:Lcom/piriform/ccleaner/a/b;

.field d:Lcom/piriform/ccleaner/cleaning/b;

.field e:Lcom/piriform/ccleaner/n/a;

.field f:Lcom/piriform/ccleaner/scheduler/n;

.field g:Lcom/piriform/ccleaner/ui/d/a;

.field h:Lcom/piriform/ccleaner/reminder/b;

.field i:Lcom/piriform/ccleaner/ui/d/b;

.field j:Lcom/piriform/ccleaner/b/e;

.field private k:Lcom/piriform/ccleaner/l/c;

.field private l:Lcom/piriform/ccleaner/cleaning/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 81
    const-string/jumbo v0, "START_CLEANING"

    invoke-static {p0, v0}, Lcom/piriform/ccleaner/cleaning/AnalysisAndCleaningService;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 82
    const-string/jumbo v1, "CLEAN_TYPE"

    sget-object v2, Lcom/piriform/ccleaner/cleaning/g;->c:Lcom/piriform/ccleaner/cleaning/g;

    .line 3027
    iget-object v2, v2, Lcom/piriform/ccleaner/cleaning/g;->d:Ljava/lang/String;

    .line 82
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/piriform/ccleaner/cleaning/e;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 74
    const-string/jumbo v0, "START_CLEANING"

    invoke-static {p0, v0}, Lcom/piriform/ccleaner/cleaning/AnalysisAndCleaningService;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 75
    const-string/jumbo v1, "SOURCE"

    .line 2014
    iget-object v2, p1, Lcom/piriform/ccleaner/cleaning/e;->c:Ljava/lang/String;

    .line 75
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    const-string/jumbo v1, "CLEAN_TYPE"

    sget-object v2, Lcom/piriform/ccleaner/cleaning/g;->b:Lcom/piriform/ccleaner/cleaning/g;

    .line 2027
    iget-object v2, v2, Lcom/piriform/ccleaner/cleaning/g;->d:Ljava/lang/String;

    .line 76
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 91
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/piriform/ccleaner/cleaning/AnalysisAndCleaningService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 92
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/Long;
    .locals 5

    .prologue
    .line 107
    const/4 v0, 0x0

    .line 109
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 113
    :goto_0
    return-object v0

    .line 111
    :catch_0
    move-exception v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "Couldn\'t parse scheduledCleanId from"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Lcom/novoda/notils/c/a/a;->a(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static a(Lcom/piriform/ccleaner/l/c;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 97
    invoke-interface {p0}, Lcom/piriform/ccleaner/l/c;->a()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/piriform/ccleaner/cleaning/g;Lcom/piriform/ccleaner/cleaning/e;)V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    .line 193
    iget-object v1, p0, Lcom/piriform/ccleaner/cleaning/AnalysisAndCleaningService;->l:Lcom/piriform/ccleaner/cleaning/a;

    .line 7066
    iget-object v0, v1, Lcom/piriform/ccleaner/cleaning/a;->j:Lcom/piriform/ccleaner/b;

    iget-object v2, v1, Lcom/piriform/ccleaner/cleaning/a;->p:Lcom/piriform/ccleaner/a/f;

    invoke-virtual {v0, v2}, Lcom/piriform/ccleaner/b;->a(Lcom/piriform/ccleaner/a/f;)Lcom/piriform/ccleaner/d/a/a;

    move-result-object v0

    iput-object v0, v1, Lcom/piriform/ccleaner/cleaning/a;->n:Lcom/piriform/ccleaner/d/a/a;

    .line 7067
    iget-object v0, v1, Lcom/piriform/ccleaner/cleaning/a;->q:Lcom/piriform/ccleaner/cleaning/d;

    invoke-static {v0}, Lcom/piriform/ccleaner/b;->a(Lcom/piriform/ccleaner/cleaning/d;)Lcom/piriform/ccleaner/d/a/b;

    move-result-object v0

    iput-object v0, v1, Lcom/piriform/ccleaner/cleaning/a;->m:Lcom/piriform/ccleaner/d/a/b;

    .line 7069
    iput-boolean v9, v1, Lcom/piriform/ccleaner/cleaning/a;->o:Z

    .line 7070
    iget-object v0, v1, Lcom/piriform/ccleaner/cleaning/a;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 7083
    iget-object v0, v1, Lcom/piriform/ccleaner/cleaning/a;->f:Lcom/piriform/ccleaner/reminder/b;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/reminder/b;->b()V

    .line 7084
    iget-object v0, v1, Lcom/piriform/ccleaner/cleaning/a;->e:Lcom/piriform/ccleaner/ui/d/a;

    .line 8032
    invoke-static {p1}, Lcom/piriform/ccleaner/ui/d/a$a;->a(Lcom/piriform/ccleaner/cleaning/g;)Lcom/piriform/ccleaner/ui/d/a$a;

    move-result-object v2

    .line 8033
    if-eqz v2, :cond_1

    .line 8034
    iget-object v3, v0, Lcom/piriform/ccleaner/ui/d/a;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0027

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 8035
    iget-object v4, v0, Lcom/piriform/ccleaner/ui/d/a;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/piriform/ccleaner/ui/d/a$a;->a(Lcom/piriform/ccleaner/ui/d/a$a;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 8036
    iget-object v5, v0, Lcom/piriform/ccleaner/ui/d/a;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/piriform/ccleaner/ui/d/a$a;->b(Lcom/piriform/ccleaner/ui/d/a$a;)I

    move-result v2

    invoke-virtual {v5, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 8069
    iget-object v5, v0, Lcom/piriform/ccleaner/ui/d/a;->a:Landroid/content/Context;

    .line 8087
    const-string/jumbo v6, "CANCEL_CLEANING"

    invoke-static {v5, v6}, Lcom/piriform/ccleaner/cleaning/AnalysisAndCleaningService;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 8070
    iget-object v6, v0, Lcom/piriform/ccleaner/ui/d/a;->a:Landroid/content/Context;

    const/4 v7, 0x3

    const/high16 v8, 0x8000000

    invoke-static {v6, v7, v5, v8}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 8040
    new-instance v6, Landroid/support/v4/app/z$d;

    iget-object v7, v0, Lcom/piriform/ccleaner/ui/d/a;->a:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/support/v4/app/z$d;-><init>(Landroid/content/Context;)V

    .line 8664
    iput v3, v6, Landroid/support/v4/app/z$d;->z:I

    .line 8042
    invoke-virtual {v6, v4}, Landroid/support/v4/app/z$d;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/z$d;

    move-result-object v3

    .line 8043
    invoke-virtual {v3, v2}, Landroid/support/v4/app/z$d;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/z$d;

    move-result-object v3

    new-instance v4, Landroid/support/v4/app/z$c;

    invoke-direct {v4}, Landroid/support/v4/app/z$c;-><init>()V

    .line 8044
    invoke-virtual {v4, v2}, Landroid/support/v4/app/z$c;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/z$c;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/support/v4/app/z$d;->a(Landroid/support/v4/app/z$q;)Landroid/support/v4/app/z$d;

    move-result-object v2

    const v3, 0x7f020111

    .line 8045
    invoke-virtual {v2, v3}, Landroid/support/v4/app/z$d;->a(I)Landroid/support/v4/app/z$d;

    move-result-object v2

    .line 8046
    invoke-virtual {v2, v9}, Landroid/support/v4/app/z$d;->a(Z)Landroid/support/v4/app/z$d;

    move-result-object v2

    .line 9379
    const/4 v3, 0x1

    invoke-virtual {v2, v10, v3}, Landroid/support/v4/app/z$d;->a(IZ)V

    .line 8047
    const v3, 0x1080038

    iget-object v4, v0, Lcom/piriform/ccleaner/ui/d/a;->a:Landroid/content/Context;

    const v6, 0x7f080206

    .line 8050
    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 8048
    invoke-virtual {v2, v3, v4, v5}, Landroid/support/v4/app/z$d;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/z$d;

    move-result-object v2

    .line 8054
    iget-object v3, v0, Lcom/piriform/ccleaner/ui/d/a;->b:Lcom/piriform/ccleaner/s/h;

    invoke-interface {v3}, Lcom/piriform/ccleaner/s/h;->a()Z

    move-result v3

    if-nez v3, :cond_0

    .line 8055
    iget-object v3, v0, Lcom/piriform/ccleaner/ui/d/a;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020104

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 10301
    iput-object v3, v2, Landroid/support/v4/app/z$d;->g:Landroid/graphics/Bitmap;

    .line 8059
    :cond_0
    invoke-virtual {v0}, Lcom/piriform/ccleaner/ui/d/a;->b()Landroid/app/NotificationManager;

    move-result-object v0

    .line 8060
    invoke-virtual {v2}, Landroid/support/v4/app/z$d;->a()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v10, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 11089
    :cond_1
    iget-object v0, v1, Lcom/piriform/ccleaner/cleaning/a;->k:Lcom/piriform/ccleaner/l/c;

    if-nez v0, :cond_2

    .line 11098
    iget-object v0, v1, Lcom/piriform/ccleaner/cleaning/a;->a:Lcom/piriform/ccleaner/a/e;

    invoke-interface {v0, p1}, Lcom/piriform/ccleaner/a/e;->a(Lcom/piriform/ccleaner/cleaning/g;)Lcom/piriform/ccleaner/a/d;

    move-result-object v0

    .line 11099
    invoke-interface {v0}, Lcom/piriform/ccleaner/a/d;->a()Ljava/util/List;

    move-result-object v0

    .line 11094
    :goto_0
    iget-object v2, v1, Lcom/piriform/ccleaner/cleaning/a;->n:Lcom/piriform/ccleaner/d/a/a;

    iget-object v3, v1, Lcom/piriform/ccleaner/cleaning/a;->h:Lcom/piriform/ccleaner/b/e;

    invoke-interface {v2, v3, v0}, Lcom/piriform/ccleaner/d/a/a;->a(Lcom/piriform/ccleaner/b/e;Ljava/util/List;)V

    .line 11107
    iget-object v0, v1, Lcom/piriform/ccleaner/cleaning/a;->d:Lcom/piriform/ccleaner/n/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/piriform/ccleaner/n/a;->a(J)V

    .line 11111
    iget-object v2, v1, Lcom/piriform/ccleaner/cleaning/a;->c:Lcom/piriform/ccleaner/cleaning/b;

    .line 12022
    iput-object p1, v2, Lcom/piriform/ccleaner/cleaning/b;->b:Lcom/piriform/ccleaner/cleaning/g;

    .line 12023
    if-nez p2, :cond_3

    const/4 v0, 0x0

    :goto_1
    iput-object v0, v2, Lcom/piriform/ccleaner/cleaning/b;->c:Ljava/lang/String;

    .line 11112
    iget-object v0, v1, Lcom/piriform/ccleaner/cleaning/a;->c:Lcom/piriform/ccleaner/cleaning/b;

    .line 13027
    iget-object v2, v0, Lcom/piriform/ccleaner/cleaning/b;->a:Lcom/piriform/ccleaner/b/a;

    iget-object v3, v0, Lcom/piriform/ccleaner/cleaning/b;->b:Lcom/piriform/ccleaner/cleaning/g;

    invoke-static {v3}, Lcom/piriform/ccleaner/b/b;->a(Lcom/piriform/ccleaner/cleaning/g;)Lcom/piriform/ccleaner/b/b;

    move-result-object v3

    iget-object v0, v0, Lcom/piriform/ccleaner/cleaning/b;->c:Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v5}, Lcom/piriform/ccleaner/b/a;->a(Lcom/piriform/ccleaner/b/b;Ljava/lang/String;J)V

    .line 7075
    iget-object v0, v1, Lcom/piriform/ccleaner/cleaning/a;->l:Lcom/piriform/ccleaner/cleaning/a$a;

    invoke-interface {v0}, Lcom/piriform/ccleaner/cleaning/a$a;->a()V

    .line 194
    return-void

    .line 11103
    :cond_2
    iget-object v0, v1, Lcom/piriform/ccleaner/cleaning/a;->b:Lcom/piriform/ccleaner/a/b;

    iget-object v2, v1, Lcom/piriform/ccleaner/cleaning/a;->k:Lcom/piriform/ccleaner/l/c;

    invoke-interface {v2}, Lcom/piriform/ccleaner/l/c;->e()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/piriform/ccleaner/a/b;->a(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 13014
    :cond_3
    iget-object v0, p2, Lcom/piriform/ccleaner/cleaning/e;->c:Ljava/lang/String;

    goto :goto_1
.end method

.method private a(Lcom/piriform/ccleaner/widget/b;)V
    .locals 1

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/piriform/ccleaner/cleaning/AnalysisAndCleaningService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/piriform/ccleaner/widget/QuickCleanWidgetService;->a(Landroid/content/Context;Lcom/piriform/ccleaner/widget/b;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/cleaning/AnalysisAndCleaningService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 247
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/AnalysisAndCleaningService;->l:Lcom/piriform/ccleaner/cleaning/a;

    .line 13172
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/piriform/ccleaner/cleaning/a;->o:Z

    .line 13173
    iget-object v1, v0, Lcom/piriform/ccleaner/cleaning/a;->n:Lcom/piriform/ccleaner/d/a/a;

    if-eqz v1, :cond_0

    .line 13174
    iget-object v1, v0, Lcom/piriform/ccleaner/cleaning/a;->n:Lcom/piriform/ccleaner/d/a/a;

    invoke-interface {v1}, Lcom/piriform/ccleaner/d/a/a;->a()V

    .line 13176
    :cond_0
    iget-object v1, v0, Lcom/piriform/ccleaner/cleaning/a;->m:Lcom/piriform/ccleaner/d/a/b;

    if-eqz v1, :cond_1

    .line 13177
    iget-object v0, v0, Lcom/piriform/ccleaner/cleaning/a;->m:Lcom/piriform/ccleaner/d/a/b;

    invoke-interface {v0}, Lcom/piriform/ccleaner/d/a/b;->a()V

    .line 227
    :cond_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 231
    sget-object v0, Lcom/piriform/ccleaner/widget/b;->a:Lcom/piriform/ccleaner/widget/b;

    invoke-direct {p0, v0}, Lcom/piriform/ccleaner/cleaning/AnalysisAndCleaningService;->a(Lcom/piriform/ccleaner/widget/b;)V

    .line 232
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 236
    sget-object v0, Lcom/piriform/ccleaner/widget/b;->b:Lcom/piriform/ccleaner/widget/b;

    invoke-direct {p0, v0}, Lcom/piriform/ccleaner/cleaning/AnalysisAndCleaningService;->a(Lcom/piriform/ccleaner/widget/b;)V

    .line 237
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/AnalysisAndCleaningService;->g:Lcom/piriform/ccleaner/ui/d/a;

    invoke-virtual {v0}, Lcom/piriform/ccleaner/ui/d/a;->a()V

    .line 242
    sget-object v0, Lcom/piriform/ccleaner/widget/b;->c:Lcom/piriform/ccleaner/widget/b;

    invoke-direct {p0, v0}, Lcom/piriform/ccleaner/cleaning/AnalysisAndCleaningService;->a(Lcom/piriform/ccleaner/widget/b;)V

    .line 243
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 12

    .prologue
    .line 118
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 119
    invoke-static {}, Lcom/piriform/ccleaner/CCleanerApplication;->a()Lcom/piriform/ccleaner/j/bl;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/piriform/ccleaner/j/bl;->a(Lcom/piriform/ccleaner/cleaning/AnalysisAndCleaningService;)V

    .line 120
    new-instance v0, Lcom/piriform/ccleaner/cleaning/a;

    iget-object v1, p0, Lcom/piriform/ccleaner/cleaning/AnalysisAndCleaningService;->a:Lcom/piriform/ccleaner/a/e;

    iget-object v2, p0, Lcom/piriform/ccleaner/cleaning/AnalysisAndCleaningService;->b:Lcom/piriform/ccleaner/b;

    iget-object v3, p0, Lcom/piriform/ccleaner/cleaning/AnalysisAndCleaningService;->c:Lcom/piriform/ccleaner/a/b;

    iget-object v4, p0, Lcom/piriform/ccleaner/cleaning/AnalysisAndCleaningService;->d:Lcom/piriform/ccleaner/cleaning/b;

    iget-object v5, p0, Lcom/piriform/ccleaner/cleaning/AnalysisAndCleaningService;->e:Lcom/piriform/ccleaner/n/a;

    iget-object v6, p0, Lcom/piriform/ccleaner/cleaning/AnalysisAndCleaningService;->g:Lcom/piriform/ccleaner/ui/d/a;

    iget-object v7, p0, Lcom/piriform/ccleaner/cleaning/AnalysisAndCleaningService;->h:Lcom/piriform/ccleaner/reminder/b;

    iget-object v8, p0, Lcom/piriform/ccleaner/cleaning/AnalysisAndCleaningService;->i:Lcom/piriform/ccleaner/ui/d/b;

    iget-object v9, p0, Lcom/piriform/ccleaner/cleaning/AnalysisAndCleaningService;->k:Lcom/piriform/ccleaner/l/c;

    iget-object v10, p0, Lcom/piriform/ccleaner/cleaning/AnalysisAndCleaningService;->j:Lcom/piriform/ccleaner/b/e;

    move-object v11, p0

    invoke-direct/range {v0 .. v11}, Lcom/piriform/ccleaner/cleaning/a;-><init>(Lcom/piriform/ccleaner/a/e;Lcom/piriform/ccleaner/b;Lcom/piriform/ccleaner/a/b;Lcom/piriform/ccleaner/cleaning/b;Lcom/piriform/ccleaner/n/a;Lcom/piriform/ccleaner/ui/d/a;Lcom/piriform/ccleaner/reminder/b;Lcom/piriform/ccleaner/ui/d/b;Lcom/piriform/ccleaner/l/c;Lcom/piriform/ccleaner/b/e;Lcom/piriform/ccleaner/cleaning/a$a;)V

    iput-object v0, p0, Lcom/piriform/ccleaner/cleaning/AnalysisAndCleaningService;->l:Lcom/piriform/ccleaner/cleaning/a;

    .line 134
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/piriform/ccleaner/cleaning/AnalysisAndCleaningService;->d()V

    .line 184
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 185
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 138
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 139
    const-string/jumbo v3, "START_CLEANING"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3148
    const-string/jumbo v0, "CLEAN_TYPE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/piriform/ccleaner/cleaning/g;->b:Lcom/piriform/ccleaner/cleaning/g;

    invoke-static {v0, v3}, Lcom/piriform/ccleaner/cleaning/g;->a(Ljava/lang/String;Lcom/piriform/ccleaner/cleaning/g;)Lcom/piriform/ccleaner/cleaning/g;

    move-result-object v3

    .line 3149
    const-string/jumbo v0, "SOURCE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/piriform/ccleaner/cleaning/e;->a(Ljava/lang/String;)Lcom/piriform/ccleaner/cleaning/e;

    move-result-object v4

    .line 3151
    sget-object v0, Lcom/piriform/ccleaner/cleaning/g;->c:Lcom/piriform/ccleaner/cleaning/g;

    if-ne v3, v0, :cond_4

    .line 3198
    new-instance v0, Lcom/piriform/ccleaner/c/b;

    invoke-direct {v0}, Lcom/piriform/ccleaner/c/b;-><init>()V

    .line 4101
    invoke-static {p1}, Lcom/piriform/ccleaner/alarm/e;->b(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v5

    .line 4102
    invoke-static {v5}, Lcom/piriform/ccleaner/cleaning/AnalysisAndCleaningService;->a(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    .line 3200
    if-nez v5, :cond_1

    .line 3201
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/piriform/ccleaner/c/b;->a(Ljava/lang/Object;)V

    .line 5013
    :goto_0
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v5}, Lcom/piriform/ccleaner/c/b;->a(ILjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    .line 3207
    check-cast v0, Lcom/piriform/ccleaner/l/c;

    .line 3160
    iput-object v0, p0, Lcom/piriform/ccleaner/cleaning/AnalysisAndCleaningService;->k:Lcom/piriform/ccleaner/l/c;

    .line 5178
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/AnalysisAndCleaningService;->k:Lcom/piriform/ccleaner/l/c;

    if-eqz v0, :cond_2

    move v0, v1

    .line 3162
    :goto_1
    if-eqz v0, :cond_0

    .line 3163
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/AnalysisAndCleaningService;->f:Lcom/piriform/ccleaner/scheduler/n;

    invoke-interface {v0}, Lcom/piriform/ccleaner/scheduler/n;->c()V

    .line 3164
    iget-object v0, p0, Lcom/piriform/ccleaner/cleaning/AnalysisAndCleaningService;->l:Lcom/piriform/ccleaner/cleaning/a;

    iget-object v5, p0, Lcom/piriform/ccleaner/cleaning/AnalysisAndCleaningService;->k:Lcom/piriform/ccleaner/l/c;

    .line 6079
    iput-object v5, v0, Lcom/piriform/ccleaner/cleaning/a;->k:Lcom/piriform/ccleaner/l/c;

    .line 6174
    invoke-static {p1}, Lcom/piriform/ccleaner/alarm/e;->a(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    .line 3166
    :goto_2
    if-eqz v0, :cond_0

    .line 3167
    invoke-direct {p0, v3, v4}, Lcom/piriform/ccleaner/cleaning/AnalysisAndCleaningService;->a(Lcom/piriform/ccleaner/cleaning/g;Lcom/piriform/ccleaner/cleaning/e;)V

    .line 144
    :cond_0
    :goto_3
    const/4 v0, 0x2

    return v0

    .line 3203
    :cond_1
    iget-object v6, p0, Lcom/piriform/ccleaner/cleaning/AnalysisAndCleaningService;->f:Lcom/piriform/ccleaner/scheduler/n;

    invoke-interface {v6, v5}, Lcom/piriform/ccleaner/scheduler/n;->a(Ljava/lang/Long;)Lf/d;

    move-result-object v5

    .line 3204
    invoke-static {}, Lf/h/a;->a()Lf/g;

    move-result-object v6

    invoke-virtual {v5, v6}, Lf/d;->b(Lf/g;)Lf/d;

    move-result-object v5

    .line 4212
    new-instance v6, Lcom/piriform/ccleaner/cleaning/AnalysisAndCleaningService$1;

    invoke-direct {v6, p0, v0}, Lcom/piriform/ccleaner/cleaning/AnalysisAndCleaningService$1;-><init>(Lcom/piriform/ccleaner/cleaning/AnalysisAndCleaningService;Lcom/piriform/ccleaner/c/b;)V

    .line 3205
    invoke-virtual {v5, v6}, Lf/d;->a(Lf/e;)Lf/j;

    goto :goto_0

    :cond_2
    move v0, v2

    .line 5178
    goto :goto_1

    :cond_3
    move v0, v2

    .line 6174
    goto :goto_2

    .line 3154
    :cond_4
    invoke-direct {p0, v3, v4}, Lcom/piriform/ccleaner/cleaning/AnalysisAndCleaningService;->a(Lcom/piriform/ccleaner/cleaning/g;Lcom/piriform/ccleaner/cleaning/e;)V

    goto :goto_3

    .line 141
    :cond_5
    const-string/jumbo v1, "CANCEL_CLEANING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    invoke-direct {p0}, Lcom/piriform/ccleaner/cleaning/AnalysisAndCleaningService;->d()V

    goto :goto_3
.end method
