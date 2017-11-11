.class public final Lcom/piriform/ccleaner/storageanalyzer/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/piriform/ccleaner/storageanalyzer/e$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Locale;

.field private static final b:Lcom/novoda/notils/a/a;

.field private static final c:Lcom/novoda/notils/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 16
    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    sput-object v0, Lcom/piriform/ccleaner/storageanalyzer/e;->a:Ljava/util/Locale;

    .line 17
    new-instance v0, Lcom/novoda/notils/a/a;

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH-mm-ss-SSS"

    sget-object v2, Lcom/piriform/ccleaner/storageanalyzer/e;->a:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Lcom/novoda/notils/a/a;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/piriform/ccleaner/storageanalyzer/e;->b:Lcom/novoda/notils/a/a;

    .line 18
    new-instance v0, Lcom/novoda/notils/a/a;

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    sget-object v2, Lcom/piriform/ccleaner/storageanalyzer/e;->a:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Lcom/novoda/notils/a/a;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/piriform/ccleaner/storageanalyzer/e;->c:Lcom/novoda/notils/a/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/piriform/ccleaner/storageanalyzer/a;Ljava/io/File;)Ljava/io/File;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/piriform/ccleaner/storageanalyzer/e$a;
        }
    .end annotation

    .prologue
    .line 21
    const/4 v2, 0x0

    .line 23
    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 24
    new-instance v3, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "storage-analysis-"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/piriform/ccleaner/storageanalyzer/e;->b:Lcom/novoda/notils/a/a;

    invoke-virtual {v4, v0}, Lcom/novoda/notils/a/a;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ".log"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 25
    new-instance v1, Ljava/io/PrintWriter;

    sget-object v4, Lcom/piriform/ccleaner/u/a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1042
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Storage Analysis at "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/piriform/ccleaner/storageanalyzer/e;->c:Lcom/novoda/notils/a/a;

    invoke-virtual {v4, v0}, Lcom/novoda/notils/a/a;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1043
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 1044
    invoke-virtual {p0}, Lcom/piriform/ccleaner/storageanalyzer/a;->b()J

    move-result-wide v4

    .line 1045
    sget-object v0, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string/jumbo v2, "%d bytes used (%s)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 1048
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    .line 1049
    invoke-static {v4, v5}, Lcom/piriform/ccleaner/core/h;->a(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v7

    .line 1045
    invoke-static {v0, v2, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1051
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 28
    invoke-static {p0, v1}, Lcom/piriform/ccleaner/storageanalyzer/e;->a(Lcom/piriform/ccleaner/storageanalyzer/a;Ljava/io/PrintWriter;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    return-object v3

    .line 32
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 33
    :goto_0
    :try_start_2
    new-instance v2, Lcom/piriform/ccleaner/storageanalyzer/e$a;

    invoke-direct {v2, v0}, Lcom/piriform/ccleaner/storageanalyzer/e$a;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 35
    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v1, :cond_0

    .line 36
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    :cond_0
    throw v0

    .line 35
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_1

    .line 32
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private static a(Lcom/piriform/ccleaner/storageanalyzer/a;Ljava/io/PrintWriter;)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 55
    move v1, v2

    :goto_0
    invoke-virtual {p0}, Lcom/piriform/ccleaner/storageanalyzer/a;->a()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 56
    invoke-virtual {p0, v1}, Lcom/piriform/ccleaner/storageanalyzer/a;->a(I)Lcom/piriform/ccleaner/storageanalyzer/c;

    move-result-object v0

    .line 1070
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Category "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/piriform/ccleaner/storageanalyzer/c;->a()Lcom/piriform/ccleaner/storageanalyzer/f;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1071
    invoke-interface {v0}, Lcom/piriform/ccleaner/storageanalyzer/c;->b()J

    move-result-wide v4

    .line 1072
    sget-object v3, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string/jumbo v6, "%d items, at %d bytes used (%s)"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    .line 1075
    invoke-interface {v0}, Lcom/piriform/ccleaner/storageanalyzer/c;->c()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    const/4 v8, 0x1

    .line 1076
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    .line 1077
    invoke-static {v4, v5}, Lcom/piriform/ccleaner/core/h;->a(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v8

    .line 1072
    invoke-static {v3, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 59
    instance-of v3, v0, Lcom/piriform/ccleaner/storageanalyzer/d;

    if-eqz v3, :cond_0

    .line 60
    check-cast v0, Lcom/piriform/ccleaner/storageanalyzer/d;

    invoke-static {v0, p1}, Lcom/piriform/ccleaner/storageanalyzer/e;->a(Lcom/piriform/ccleaner/storageanalyzer/d;Ljava/io/PrintWriter;)V

    .line 63
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 64
    const-string/jumbo v0, "################################################################################"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 55
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 67
    :cond_1
    return-void
.end method

.method private static a(Lcom/piriform/ccleaner/storageanalyzer/d;Ljava/io/PrintWriter;)V
    .locals 8

    .prologue
    .line 82
    .line 2048
    iget-object v0, p0, Lcom/piriform/ccleaner/storageanalyzer/d;->c:Ljava/util/Set;

    .line 85
    const-string/jumbo v1, "Files:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 86
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/piriform/ccleaner/g/d;

    .line 87
    sget-object v2, Lcom/piriform/ccleaner/storageanalyzer/e;->a:Ljava/util/Locale;

    const-string/jumbo v3, "%s (%s, %d)"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/piriform/ccleaner/g/d;->b()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 2124
    iget-wide v6, v0, Lcom/piriform/ccleaner/g/d;->f:J

    .line 87
    invoke-static {v6, v7}, Lcom/piriform/ccleaner/core/h;->a(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    .line 3124
    iget-wide v6, v0, Lcom/piriform/ccleaner/g/d;->f:J

    .line 87
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :cond_0
    return-void
.end method
