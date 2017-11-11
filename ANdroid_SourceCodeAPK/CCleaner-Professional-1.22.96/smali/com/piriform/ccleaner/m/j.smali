.class final Lcom/piriform/ccleaner/m/j;
.super Landroid/content/pm/IPackageStatsObserver$a;
.source "SourceFile"


# instance fields
.field private final a:Lcom/piriform/ccleaner/core/data/AndroidPackage;

.field private final b:Lcom/piriform/ccleaner/m/l;


# direct methods
.method constructor <init>(Lcom/piriform/ccleaner/core/data/AndroidPackage;Lcom/piriform/ccleaner/m/l;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/pm/IPackageStatsObserver$a;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/piriform/ccleaner/m/j;->a:Lcom/piriform/ccleaner/core/data/AndroidPackage;

    .line 17
    iput-object p2, p0, Lcom/piriform/ccleaner/m/j;->b:Lcom/piriform/ccleaner/m/l;

    .line 18
    return-void
.end method


# virtual methods
.method public final onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .locals 4

    .prologue
    .line 22
    iget-object v0, p0, Lcom/piriform/ccleaner/m/j;->a:Lcom/piriform/ccleaner/core/data/AndroidPackage;

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->codeSize:J

    .line 1131
    iput-wide v2, v0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->f:J

    .line 23
    iget-object v0, p0, Lcom/piriform/ccleaner/m/j;->a:Lcom/piriform/ccleaner/core/data/AndroidPackage;

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->dataSize:J

    .line 1162
    iput-wide v2, v0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->g:J

    .line 24
    iget-object v0, p0, Lcom/piriform/ccleaner/m/j;->a:Lcom/piriform/ccleaner/core/data/AndroidPackage;

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->cacheSize:J

    .line 2127
    iput-wide v2, v0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->e:J

    .line 25
    iget-object v0, p0, Lcom/piriform/ccleaner/m/j;->a:Lcom/piriform/ccleaner/core/data/AndroidPackage;

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalCodeSize:J

    .line 2206
    iput-wide v2, v0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->m:J

    .line 26
    iget-object v0, p0, Lcom/piriform/ccleaner/m/j;->a:Lcom/piriform/ccleaner/core/data/AndroidPackage;

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalDataSize:J

    .line 3198
    iput-wide v2, v0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->l:J

    .line 27
    iget-object v0, p0, Lcom/piriform/ccleaner/m/j;->a:Lcom/piriform/ccleaner/core/data/AndroidPackage;

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalCacheSize:J

    .line 4174
    iput-wide v2, v0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->k:J

    .line 28
    iget-object v0, p0, Lcom/piriform/ccleaner/m/j;->a:Lcom/piriform/ccleaner/core/data/AndroidPackage;

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalMediaSize:J

    .line 4182
    iput-wide v2, v0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->j:J

    .line 29
    iget-object v0, p0, Lcom/piriform/ccleaner/m/j;->a:Lcom/piriform/ccleaner/core/data/AndroidPackage;

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalObbSize:J

    .line 4190
    iput-wide v2, v0, Lcom/piriform/ccleaner/core/data/AndroidPackage;->i:J

    .line 30
    iget-object v0, p0, Lcom/piriform/ccleaner/m/j;->b:Lcom/piriform/ccleaner/m/l;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/piriform/ccleaner/m/j;->b:Lcom/piriform/ccleaner/m/l;

    invoke-interface {v0}, Lcom/piriform/ccleaner/m/l;->a()V

    .line 33
    :cond_0
    return-void
.end method
