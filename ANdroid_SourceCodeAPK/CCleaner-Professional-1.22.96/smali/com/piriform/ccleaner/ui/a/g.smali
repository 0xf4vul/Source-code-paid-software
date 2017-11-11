.class public final Lcom/piriform/ccleaner/ui/a/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/piriform/ccleaner/professional/m;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/ui/a/e;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/piriform/ccleaner/ui/a/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    .prologue
    const v9, 0x7f02011a

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/a/g;->b:Ljava/util/List;

    .line 28
    sget-object v0, Lcom/piriform/ccleaner/professional/m;->f:Lcom/piriform/ccleaner/professional/m;

    iput-object v0, p0, Lcom/piriform/ccleaner/ui/a/g;->a:Lcom/piriform/ccleaner/professional/m;

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 32
    const v1, 0x7f080211

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 34
    iget-object v2, p0, Lcom/piriform/ccleaner/ui/a/g;->b:Ljava/util/List;

    new-instance v3, Lcom/piriform/ccleaner/ui/a/h;

    invoke-direct {v3}, Lcom/piriform/ccleaner/ui/a/h;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    const-class v2, Lcom/piriform/ccleaner/ui/activity/MainActivity;

    const v3, 0x7f080212

    const-string/jumbo v4, "Analysis"

    const v5, 0x7f02010b

    invoke-static {v2, v3, v4, v5}, Lcom/piriform/ccleaner/ui/a/i;->a(Ljava/lang/Class;ILjava/lang/String;I)Lcom/piriform/ccleaner/ui/a/i$a;

    move-result-object v2

    .line 41
    invoke-virtual {v2}, Lcom/piriform/ccleaner/ui/a/i$a;->a()Lcom/piriform/ccleaner/ui/a/i;

    move-result-object v2

    .line 42
    iget-object v3, p0, Lcom/piriform/ccleaner/ui/a/g;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    const-class v2, Lcom/piriform/ccleaner/appmanager/AppManagerActivity;

    const v3, 0x7f0800aa

    const-string/jumbo v4, "App Manager"

    const v5, 0x7f02010a

    invoke-static {v2, v3, v4, v5}, Lcom/piriform/ccleaner/ui/a/i;->a(Ljava/lang/Class;ILjava/lang/String;I)Lcom/piriform/ccleaner/ui/a/i$a;

    move-result-object v2

    .line 49
    invoke-virtual {v2}, Lcom/piriform/ccleaner/ui/a/i$a;->a()Lcom/piriform/ccleaner/ui/a/i;

    move-result-object v2

    .line 50
    iget-object v3, p0, Lcom/piriform/ccleaner/ui/a/g;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    new-instance v2, Lcom/piriform/ccleaner/e/a;

    invoke-direct {v2}, Lcom/piriform/ccleaner/e/a;-><init>()V

    .line 55
    const-class v2, Lcom/piriform/ccleaner/storageanalyzer/frontend/StorageAnalyzerActivity;

    const v3, 0x7f080214

    const-string/jumbo v4, "Storage Analyzer"

    const v5, 0x7f020110

    invoke-static {v2, v3, v4, v5}, Lcom/piriform/ccleaner/ui/a/i;->a(Ljava/lang/Class;ILjava/lang/String;I)Lcom/piriform/ccleaner/ui/a/i$a;

    move-result-object v2

    new-array v3, v8, [Lcom/piriform/ccleaner/professional/m;

    sget-object v4, Lcom/piriform/ccleaner/professional/m;->e:Lcom/piriform/ccleaner/professional/m;

    aput-object v4, v3, v7

    .line 61
    invoke-virtual {v2, v3}, Lcom/piriform/ccleaner/ui/a/i$a;->a([Lcom/piriform/ccleaner/professional/m;)Lcom/piriform/ccleaner/ui/a/i$a;

    move-result-object v2

    .line 62
    invoke-virtual {v2}, Lcom/piriform/ccleaner/ui/a/i$a;->a()Lcom/piriform/ccleaner/ui/a/i;

    move-result-object v2

    .line 63
    iget-object v3, p0, Lcom/piriform/ccleaner/ui/a/g;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    const-class v2, Lcom/piriform/ccleaner/ui/activity/SystemInfoActivity;

    const v3, 0x7f0800ac

    const-string/jumbo v4, "System Info"

    const v5, 0x7f02010d

    invoke-static {v2, v3, v4, v5}, Lcom/piriform/ccleaner/ui/a/i;->a(Ljava/lang/Class;ILjava/lang/String;I)Lcom/piriform/ccleaner/ui/a/i$a;

    move-result-object v2

    .line 70
    invoke-virtual {v2}, Lcom/piriform/ccleaner/ui/a/i$a;->a()Lcom/piriform/ccleaner/ui/a/i;

    move-result-object v2

    .line 71
    iget-object v3, p0, Lcom/piriform/ccleaner/ui/a/g;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    const-class v2, Lcom/piriform/ccleaner/scheduler/ScheduledCleanListActivity;

    const v3, 0x7f080213

    const-string/jumbo v4, "Scheduler"

    const v5, 0x7f020121

    invoke-static {v2, v3, v4, v5}, Lcom/piriform/ccleaner/ui/a/i;->a(Ljava/lang/Class;ILjava/lang/String;I)Lcom/piriform/ccleaner/ui/a/i$a;

    move-result-object v2

    .line 1175
    iput v9, v2, Lcom/piriform/ccleaner/ui/a/i$a;->e:I

    .line 79
    new-array v3, v8, [Lcom/piriform/ccleaner/professional/m;

    sget-object v4, Lcom/piriform/ccleaner/professional/m;->e:Lcom/piriform/ccleaner/professional/m;

    aput-object v4, v3, v7

    .line 80
    invoke-virtual {v2, v3}, Lcom/piriform/ccleaner/ui/a/i$a;->a([Lcom/piriform/ccleaner/professional/m;)Lcom/piriform/ccleaner/ui/a/i$a;

    move-result-object v2

    .line 81
    invoke-virtual {v2}, Lcom/piriform/ccleaner/ui/a/i$a;->a()Lcom/piriform/ccleaner/ui/a/i;

    move-result-object v2

    .line 82
    iget-object v3, p0, Lcom/piriform/ccleaner/ui/a/g;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v2, p0, Lcom/piriform/ccleaner/ui/a/g;->b:Ljava/util/List;

    new-instance v3, Lcom/piriform/ccleaner/ui/a/l;

    invoke-direct {v3}, Lcom/piriform/ccleaner/ui/a/l;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    const-class v2, Lcom/piriform/ccleaner/ui/activity/SettingsActivity;

    const v3, 0x7f0800ab

    const-string/jumbo v4, "Settings"

    const v5, 0x7f02010f

    invoke-static {v2, v3, v4, v5}, Lcom/piriform/ccleaner/ui/a/i;->a(Ljava/lang/Class;ILjava/lang/String;I)Lcom/piriform/ccleaner/ui/a/i$a;

    move-result-object v2

    .line 91
    invoke-virtual {v2}, Lcom/piriform/ccleaner/ui/a/i$a;->a()Lcom/piriform/ccleaner/ui/a/i;

    move-result-object v2

    .line 92
    iget-object v3, p0, Lcom/piriform/ccleaner/ui/a/g;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    const-string/jumbo v2, "Help"

    .line 2058
    new-instance v3, Lcom/piriform/ccleaner/ui/a/i$a;

    const v4, 0x7f0800ca

    const v5, 0x7f02010c

    new-instance v6, Lcom/piriform/ccleaner/ui/a/m;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v6, v1}, Lcom/piriform/ccleaner/ui/a/m;-><init>(Landroid/net/Uri;)V

    invoke-direct {v3, v4, v5, v2, v6}, Lcom/piriform/ccleaner/ui/a/i$a;-><init>(IILjava/lang/String;Lcom/piriform/ccleaner/ui/a/f;)V

    .line 99
    invoke-virtual {v3}, Lcom/piriform/ccleaner/ui/a/i$a;->a()Lcom/piriform/ccleaner/ui/a/i;

    move-result-object v1

    .line 100
    iget-object v2, p0, Lcom/piriform/ccleaner/ui/a/g;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/a/g;->b:Ljava/util/List;

    const-string/jumbo v2, "Rate"

    .line 2062
    new-instance v3, Lcom/piriform/ccleaner/ui/a/i$a;

    const v4, 0x7f0800cb

    const v5, 0x7f02010e

    new-instance v6, Lcom/piriform/ccleaner/ui/a/k;

    invoke-direct {v6}, Lcom/piriform/ccleaner/ui/a/k;-><init>()V

    invoke-direct {v3, v4, v5, v2, v6}, Lcom/piriform/ccleaner/ui/a/i$a;-><init>(IILjava/lang/String;Lcom/piriform/ccleaner/ui/a/f;)V

    .line 102
    invoke-virtual {v3}, Lcom/piriform/ccleaner/ui/a/i$a;->a()Lcom/piriform/ccleaner/ui/a/i;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    const-class v1, Lcom/piriform/ccleaner/professional/UpgradeToProfessionalActivity;

    const v2, 0x7f080150

    const-string/jumbo v3, "Upgrade"

    invoke-static {v1, v2, v3, v9}, Lcom/piriform/ccleaner/ui/a/i;->a(Ljava/lang/Class;ILjava/lang/String;I)Lcom/piriform/ccleaner/ui/a/i$a;

    move-result-object v1

    .line 2180
    const v2, 0x7f020070

    iput v2, v1, Lcom/piriform/ccleaner/ui/a/i$a;->f:I

    .line 110
    const v2, 0x7f0e007f

    .line 111
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 2185
    iput v0, v1, Lcom/piriform/ccleaner/ui/a/i$a;->g:I

    .line 111
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/piriform/ccleaner/professional/m;

    sget-object v2, Lcom/piriform/ccleaner/professional/m;->e:Lcom/piriform/ccleaner/professional/m;

    aput-object v2, v0, v7

    sget-object v2, Lcom/piriform/ccleaner/professional/m;->d:Lcom/piriform/ccleaner/professional/m;

    aput-object v2, v0, v8

    const/4 v2, 0x2

    sget-object v3, Lcom/piriform/ccleaner/professional/m;->a:Lcom/piriform/ccleaner/professional/m;

    aput-object v3, v0, v2

    .line 112
    invoke-virtual {v1, v0}, Lcom/piriform/ccleaner/ui/a/i$a;->a([Lcom/piriform/ccleaner/professional/m;)Lcom/piriform/ccleaner/ui/a/i$a;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Lcom/piriform/ccleaner/ui/a/i$a;->a()Lcom/piriform/ccleaner/ui/a/i;

    move-result-object v0

    .line 114
    iget-object v1, p0, Lcom/piriform/ccleaner/ui/a/g;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    invoke-virtual {p0}, Lcom/piriform/ccleaner/ui/a/g;->b()V

    .line 116
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/a/g;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final a(I)Lcom/piriform/ccleaner/ui/a/e;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/a/g;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/ui/a/e;

    return-object v0
.end method

.method final b()V
    .locals 4

    .prologue
    .line 132
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/a/g;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/piriform/ccleaner/ui/a/g;->a:Lcom/piriform/ccleaner/professional/m;

    .line 3136
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/piriform/ccleaner/ui/a/g;->c:Ljava/util/List;

    .line 3137
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/ui/a/e;

    .line 3138
    invoke-interface {v0, v1}, Lcom/piriform/ccleaner/ui/a/e;->a(Lcom/piriform/ccleaner/professional/m;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3139
    iget-object v3, p0, Lcom/piriform/ccleaner/ui/a/g;->c:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3142
    :cond_1
    iget-object v0, p0, Lcom/piriform/ccleaner/ui/a/g;->c:Ljava/util/List;

    .line 132
    iput-object v0, p0, Lcom/piriform/ccleaner/ui/a/g;->c:Ljava/util/List;

    .line 133
    return-void
.end method
