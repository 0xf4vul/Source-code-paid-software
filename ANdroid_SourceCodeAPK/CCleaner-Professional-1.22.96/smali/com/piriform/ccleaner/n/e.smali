.class public final Lcom/piriform/ccleaner/n/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/piriform/ccleaner/n/d;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/piriform/ccleaner/cleaning/g;->a:Lcom/piriform/ccleaner/cleaning/g;

    .line 4027
    iget-object v1, v1, Lcom/piriform/ccleaner/cleaning/g;->d:Ljava/lang/String;

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".%s.enabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/piriform/ccleaner/n/e;->a:Ljava/lang/String;

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/piriform/ccleaner/cleaning/g;->b:Lcom/piriform/ccleaner/cleaning/g;

    .line 5027
    iget-object v1, v1, Lcom/piriform/ccleaner/cleaning/g;->d:Ljava/lang/String;

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".%s.enabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/piriform/ccleaner/n/e;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/piriform/ccleaner/n/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 52
    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 53
    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-static {p3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 55
    invoke-virtual {p0, v0, v2}, Lcom/piriform/ccleaner/n/c;->b(Ljava/lang/String;Z)Z

    move-result v2

    .line 3061
    if-eqz v2, :cond_0

    .line 3062
    invoke-virtual {p0, v1}, Lcom/piriform/ccleaner/n/c;->a(Ljava/lang/String;)V

    .line 57
    :goto_0
    invoke-virtual {p0, v0}, Lcom/piriform/ccleaner/n/c;->a(Ljava/lang/String;)V

    .line 58
    return-void

    .line 3064
    :cond_0
    invoke-virtual {p0, v1, v3}, Lcom/piriform/ccleaner/n/c;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/piriform/ccleaner/n/c;I)V
    .locals 7

    .prologue
    .line 21
    if-nez p2, :cond_1

    .line 1027
    invoke-static {}, Lcom/piriform/ccleaner/a/h;->values()[Lcom/piriform/ccleaner/a/h;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 1218
    iget-object v4, v3, Lcom/piriform/ccleaner/a/h;->C:Ljava/lang/String;

    .line 1030
    const-string/jumbo v5, "%s.ignore_user_data_risk"

    sget-object v6, Lcom/piriform/ccleaner/n/e;->a:Ljava/lang/String;

    .line 1028
    invoke-static {p1, v4, v5, v6}, Lcom/piriform/ccleaner/n/e;->a(Lcom/piriform/ccleaner/n/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2218
    iget-object v3, v3, Lcom/piriform/ccleaner/a/h;->C:Ljava/lang/String;

    .line 1037
    const-string/jumbo v4, "%s.quick_clean.enabled"

    sget-object v5, Lcom/piriform/ccleaner/n/e;->b:Ljava/lang/String;

    .line 1035
    invoke-static {p1, v3, v4, v5}, Lcom/piriform/ccleaner/n/e;->a(Lcom/piriform/ccleaner/n/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1027
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1043
    :cond_0
    const-string/jumbo v0, "v"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/piriform/ccleaner/n/c;->a(Ljava/lang/String;I)V

    .line 24
    :cond_1
    return-void
.end method
