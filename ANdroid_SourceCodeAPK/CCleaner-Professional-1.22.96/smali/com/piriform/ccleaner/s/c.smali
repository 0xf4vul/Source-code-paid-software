.class public final Lcom/piriform/ccleaner/s/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/s/j;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 9
    invoke-static {}, Lb/a/a/b$f;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/piriform/ccleaner/s/c;->a:Ljava/lang/String;

    .line 10
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "/sbin/"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "/system/bin/"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "/system/xbin/"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "/data/local/xbin/"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "/data/local/bin/"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "/system/sd/xbin/"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "/system/bin/failsafe/"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "/data/local/"

    aput-object v2, v0, v1

    sput-object v0, Lcom/piriform/ccleaner/s/c;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final m()Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 22
    const-string/jumbo v3, "su"

    .line 1026
    sget-object v4, Lcom/piriform/ccleaner/s/c;->b:[Ljava/lang/String;

    array-length v5, v4

    move v2, v0

    :goto_0
    if-ge v2, v5, :cond_3

    aget-object v6, v4, v2

    .line 1027
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    move v2, v1

    .line 22
    :goto_1
    if-nez v2, :cond_0

    .line 1035
    sget-object v2, Lcom/piriform/ccleaner/s/c;->a:Ljava/lang/String;

    if-eqz v2, :cond_4

    sget-object v2, Lcom/piriform/ccleaner/s/c;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    move v2, v1

    .line 22
    :goto_2
    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0

    .line 1026
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    move v2, v0

    .line 1031
    goto :goto_1

    :cond_4
    move v2, v0

    .line 1035
    goto :goto_2
.end method
