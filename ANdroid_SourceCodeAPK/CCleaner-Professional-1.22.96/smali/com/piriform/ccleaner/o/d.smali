.class public final Lcom/piriform/ccleaner/o/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/o/g;


# instance fields
.field private final a:Landroid/net/Uri;


# direct methods
.method private constructor <init>(Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/piriform/ccleaner/o/d;->a:Landroid/net/Uri;

    .line 31
    return-void
.end method

.method public static a([Landroid/content/ContentProviderResult;)Lcom/piriform/ccleaner/o/g;
    .locals 2

    .prologue
    .line 10
    array-length v0, p0

    if-nez v0, :cond_0

    .line 1026
    new-instance v0, Lcom/piriform/ccleaner/o/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/piriform/ccleaner/o/d;-><init>(Landroid/net/Uri;)V

    .line 13
    :goto_0
    return-object v0

    :cond_0
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-object v1, p0, v0

    .line 2018
    new-instance v0, Lcom/piriform/ccleaner/o/d;

    iget-object v1, v1, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-direct {v0, v1}, Lcom/piriform/ccleaner/o/d;-><init>(Landroid/net/Uri;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/piriform/ccleaner/o/d;->a:Landroid/net/Uri;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/piriform/ccleaner/o/d;->a:Landroid/net/Uri;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/piriform/ccleaner/o/d;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method
