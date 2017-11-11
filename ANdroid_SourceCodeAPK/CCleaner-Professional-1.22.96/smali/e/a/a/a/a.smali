.class public final Le/a/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:I

.field private final c:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Le/a/a/a/a;-><init>(I)V

    .line 24
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Le/a/a/a/a$1;

    invoke-direct {v0, p0}, Le/a/a/a/a$1;-><init>(Le/a/a/a/a;)V

    iput-object v0, p0, Le/a/a/a/a;->c:Ljava/util/Comparator;

    .line 27
    iput p1, p0, Le/a/a/a/a;->b:I

    .line 28
    new-instance v0, Ljava/util/TreeSet;

    iget-object v1, p0, Le/a/a/a/a;->c:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Le/a/a/a/a;->a:Ljava/util/SortedSet;

    .line 29
    return-void
.end method

.method public static a(Landroid/content/res/AssetManager;Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    const/4 v0, 0x1

    .line 121
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 122
    array-length v2, v1

    if-nez v2, :cond_1

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "You need to add atleast one SQL file in your assets/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " folder"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1119
    const-string/jumbo v2, "SQLiteProvider-Mig"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_0
    :goto_0
    return v0

    .line 125
    :cond_1
    new-instance v2, Le/a/a/a/a;

    const/4 v0, -0x1

    invoke-direct {v2, v0}, Le/a/a/a/a;-><init>(I)V

    .line 126
    array-length v3, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_2

    aget-object v4, v1, v0

    .line 127
    invoke-virtual {v2, v4}, Le/a/a/a/a;->a(Ljava/lang/String;)Z

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2052
    :cond_2
    iget-object v0, v2, Le/a/a/a/a;->a:Ljava/util/SortedSet;

    .line 129
    invoke-interface {v0}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Le/a/a/a/a;->b(Ljava/lang/String;)I

    move-result v0

    .line 2071
    const-string/jumbo v1, "SQLiteProvider-Mig"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    .line 130
    if-eqz v1, :cond_0

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "current migration file version is: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2091
    const-string/jumbo v2, "SQLiteProvider-Mig"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 44
    :try_start_0
    const-string/jumbo v0, "_"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 47
    :goto_0
    return v0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    const-string/jumbo v1, "Invalid int, returning -1."

    invoke-static {v1, v0}, Le/a/a/d/c$a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    const/4 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 32
    .line 1039
    invoke-static {p1}, Le/a/a/a/a;->b(Ljava/lang/String;)I

    move-result v1

    iget v2, p0, Le/a/a/a/a;->b:I

    if-le v1, v2, :cond_1

    const/4 v1, 0x1

    .line 32
    :goto_0
    if-eqz v1, :cond_0

    .line 33
    iget-object v0, p0, Le/a/a/a/a;->a:Ljava/util/SortedSet;

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 35
    :cond_0
    return v0

    :cond_1
    move v1, v0

    .line 1039
    goto :goto_0
.end method
