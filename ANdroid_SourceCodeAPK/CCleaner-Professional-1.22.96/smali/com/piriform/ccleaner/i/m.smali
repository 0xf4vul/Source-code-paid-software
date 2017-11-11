.class public final Lcom/piriform/ccleaner/i/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final a:Lcom/piriform/ccleaner/i/m;


# instance fields
.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 7
    new-instance v0, Lcom/piriform/ccleaner/i/m;

    const-string/jumbo v1, "not present"

    invoke-direct {v0, v1}, Lcom/piriform/ccleaner/i/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/piriform/ccleaner/i/m;->a:Lcom/piriform/ccleaner/i/m;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/piriform/ccleaner/i/m;->b:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/piriform/ccleaner/i/m;
    .locals 1

    .prologue
    .line 12
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 13
    new-instance v0, Lcom/piriform/ccleaner/i/m;

    invoke-direct {v0, p0}, Lcom/piriform/ccleaner/i/m;-><init>(Ljava/lang/String;)V

    .line 15
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/piriform/ccleaner/i/m;->a:Lcom/piriform/ccleaner/i/m;

    goto :goto_0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 29
    if-ne p0, p1, :cond_0

    .line 30
    const/4 v0, 0x1

    .line 38
    :goto_0
    return v0

    .line 32
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 33
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 36
    :cond_2
    check-cast p1, Lcom/piriform/ccleaner/i/m;

    .line 38
    iget-object v0, p0, Lcom/piriform/ccleaner/i/m;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/piriform/ccleaner/i/m;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/piriform/ccleaner/i/m;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/piriform/ccleaner/i/m;->b:Ljava/lang/String;

    return-object v0
.end method
