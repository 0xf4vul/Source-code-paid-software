.class public final Lcom/b/a/c/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/b/a/c/h$e;,
        Lcom/b/a/c/h$d;,
        Lcom/b/a/c/h$c;,
        Lcom/b/a/c/h$a;,
        Lcom/b/a/c/h$f;,
        Lcom/b/a/c/h$b;
    }
.end annotation


# static fields
.field static final a:Ljava/io/FilenameFilter;

.field static final b:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field static final c:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field static final d:Ljava/io/FilenameFilter;

.field private static final j:Ljava/util/regex/Pattern;

.field private static final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final l:[Ljava/lang/String;


# instance fields
.field final e:Lcom/b/a/c/i;

.field public final f:Lcom/b/a/c/g;

.field final g:Lcom/b/a/c/ab;

.field final h:Lcom/b/a/c/a;

.field i:Lcom/b/a/c/m;

.field private final m:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final n:Lc/a/a/a/a/e/e;

.field private final o:Lc/a/a/a/a/b/o;

.field private final p:Lc/a/a/a/a/f/a;

.field private final q:Lcom/b/a/c/u;

.field private final r:Lcom/b/a/c/q;

.field private final s:Lcom/b/a/c/ai;

.field private final t:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 131
    new-instance v0, Lcom/b/a/c/h$1;

    invoke-direct {v0}, Lcom/b/a/c/h$1;-><init>()V

    sput-object v0, Lcom/b/a/c/h;->a:Ljava/io/FilenameFilter;

    .line 139
    new-instance v0, Lcom/b/a/c/h$8;

    invoke-direct {v0}, Lcom/b/a/c/h$8;-><init>()V

    sput-object v0, Lcom/b/a/c/h;->b:Ljava/util/Comparator;

    .line 146
    new-instance v0, Lcom/b/a/c/h$9;

    invoke-direct {v0}, Lcom/b/a/c/h$9;-><init>()V

    sput-object v0, Lcom/b/a/c/h;->c:Ljava/util/Comparator;

    .line 156
    new-instance v0, Lcom/b/a/c/h$10;

    invoke-direct {v0}, Lcom/b/a/c/h$10;-><init>()V

    sput-object v0, Lcom/b/a/c/h;->d:Ljava/io/FilenameFilter;

    .line 163
    const-string/jumbo v0, "([\\d|A-Z|a-z]{12}\\-[\\d|A-Z|a-z]{4}\\-[\\d|A-Z|a-z]{4}\\-[\\d|A-Z|a-z]{12}).+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/b/a/c/h;->j:Ljava/util/regex/Pattern;

    .line 172
    const-string/jumbo v0, "X-CRASHLYTICS-SEND-FLAGS"

    const-string/jumbo v1, "1"

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/b/a/c/h;->k:Ljava/util/Map;

    .line 205
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "SessionUser"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "SessionApp"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "SessionOS"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "SessionDevice"

    aput-object v2, v0, v1

    sput-object v0, Lcom/b/a/c/h;->l:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/b/a/c/i;Lcom/b/a/c/g;Lc/a/a/a/a/e/e;Lc/a/a/a/a/b/o;Lcom/b/a/c/ab;Lc/a/a/a/a/f/a;Lcom/b/a/c/a;Lcom/b/a/c/ak;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/b/a/c/h;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 234
    iput-object p1, p0, Lcom/b/a/c/h;->e:Lcom/b/a/c/i;

    .line 235
    iput-object p2, p0, Lcom/b/a/c/h;->f:Lcom/b/a/c/g;

    .line 236
    iput-object p3, p0, Lcom/b/a/c/h;->n:Lc/a/a/a/a/e/e;

    .line 237
    iput-object p4, p0, Lcom/b/a/c/h;->o:Lc/a/a/a/a/b/o;

    .line 238
    iput-object p5, p0, Lcom/b/a/c/h;->g:Lcom/b/a/c/ab;

    .line 239
    iput-object p6, p0, Lcom/b/a/c/h;->p:Lc/a/a/a/a/f/a;

    .line 240
    iput-object p7, p0, Lcom/b/a/c/h;->h:Lcom/b/a/c/a;

    .line 242
    invoke-interface {p8}, Lcom/b/a/c/ak;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/c/h;->t:Ljava/lang/String;

    .line 2116
    iget-object v0, p1, Lc/a/a/a/i;->h:Landroid/content/Context;

    .line 245
    new-instance v1, Lcom/b/a/c/u;

    invoke-direct {v1, v0, p6}, Lcom/b/a/c/u;-><init>(Landroid/content/Context;Lc/a/a/a/a/f/a;)V

    iput-object v1, p0, Lcom/b/a/c/h;->q:Lcom/b/a/c/u;

    .line 246
    new-instance v1, Lcom/b/a/c/q;

    invoke-direct {v1, v0}, Lcom/b/a/c/q;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/b/a/c/h;->r:Lcom/b/a/c/q;

    .line 247
    new-instance v0, Lcom/b/a/c/x;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/b/a/c/ai;

    new-instance v2, Lcom/b/a/c/ad;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Lcom/b/a/c/ad;-><init>(I)V

    aput-object v2, v1, v4

    invoke-direct {v0, v1}, Lcom/b/a/c/x;-><init>([Lcom/b/a/c/ai;)V

    iput-object v0, p0, Lcom/b/a/c/h;->s:Lcom/b/a/c/ai;

    .line 249
    return-void
.end method

.method static synthetic a(Lcom/b/a/c/h;)Lcom/b/a/c/i;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/b/a/c/h;->e:Lcom/b/a/c/i;

    return-object v0
.end method

.method static a(Ljava/io/File;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 449
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/b/a/c/e;Ljava/io/File;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1257
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1258
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v0

    const-string/jumbo v1, "CrashlyticsCore"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Tried to include a file that doesn\'t exist: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3, v2}, Lc/a/a/a/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1270
    :goto_0
    return-void

    .line 1265
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1267
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v0, v2

    invoke-static {v1, p0, v0}, Lcom/b/a/c/h;->a(Ljava/io/InputStream;Lcom/b/a/c/e;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1269
    const-string/jumbo v0, "Failed to close file input stream."

    invoke-static {v1, v0}, Lc/a/a/a/a/b/i;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_1
    const-string/jumbo v2, "Failed to close file input stream."

    invoke-static {v1, v2}, Lc/a/a/a/a/b/i;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method private a(Lcom/b/a/c/e;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1238
    sget-object v2, Lcom/b/a/c/h;->l:[Ljava/lang/String;

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 1239
    new-instance v5, Lcom/b/a/c/h$b;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/b/a/c/h$b;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/b/a/c/h;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v5

    .line 1242
    array-length v6, v5

    if-nez v6, :cond_0

    .line 1243
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v5

    const-string/jumbo v6, "CrashlyticsCore"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Can\'t find "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, " data for session ID "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    invoke-interface {v5, v6, v4, v7}, Lc/a/a/a/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1238
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1246
    :cond_0
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v6

    const-string/jumbo v7, "CrashlyticsCore"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Collecting "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, " data for session ID "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v7, v4}, Lc/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    aget-object v4, v5, v1

    invoke-static {p1, v4}, Lcom/b/a/c/h;->a(Lcom/b/a/c/e;Ljava/io/File;)V

    goto :goto_1

    .line 1251
    :cond_1
    return-void
.end method

.method private a(Lcom/b/a/c/e;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;Z)V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1068
    new-instance v6, Lcom/b/a/c/aj;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/b/a/c/h;->s:Lcom/b/a/c/ai;

    move-object/from16 v0, p4

    invoke-direct {v6, v0, v2}, Lcom/b/a/c/aj;-><init>(Ljava/lang/Throwable;Lcom/b/a/c/ai;)V

    .line 1071
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/b/a/c/h;->e:Lcom/b/a/c/i;

    .line 7116
    iget-object v11, v2, Lc/a/a/a/i;->h:Landroid/content/Context;

    .line 1072
    invoke-virtual/range {p2 .. p2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v3, v2, v4

    .line 1073
    invoke-static {v11}, Lc/a/a/a/a/b/i;->c(Landroid/content/Context;)Ljava/lang/Float;

    move-result-object v17

    .line 1074
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/b/a/c/h;->r:Lcom/b/a/c/q;

    .line 8065
    iget-boolean v2, v2, Lcom/b/a/c/q;->e:Z

    .line 1074
    invoke-static {v11, v2}, Lc/a/a/a/a/b/i;->a(Landroid/content/Context;Z)I

    move-result v18

    .line 1076
    invoke-static {v11}, Lc/a/a/a/a/b/i;->d(Landroid/content/Context;)Z

    move-result v19

    .line 1077
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v14, v2, Landroid/content/res/Configuration;->orientation:I

    .line 1078
    invoke-static {}, Lc/a/a/a/a/b/i;->b()J

    move-result-wide v8

    invoke-static {v11}, Lc/a/a/a/a/b/i;->b(Landroid/content/Context;)J

    move-result-wide v12

    sub-long v20, v8, v12

    .line 1080
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc/a/a/a/a/b/i;->b(Ljava/lang/String;)J

    move-result-wide v22

    .line 1083
    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v11}, Lc/a/a/a/a/b/i;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-result-object v13

    .line 1085
    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    .line 1086
    iget-object v8, v6, Lcom/b/a/c/aj;->c:[Ljava/lang/StackTraceElement;

    .line 1087
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/b/a/c/h;->h:Lcom/b/a/c/a;

    iget-object v0, v2, Lcom/b/a/c/a;->b:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 1088
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/b/a/c/h;->o:Lc/a/a/a/a/b/o;

    .line 8177
    iget-object v15, v2, Lc/a/a/a/a/b/o;->d:Ljava/lang/String;

    .line 1091
    if-eqz p6, :cond_0

    .line 1092
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v5

    .line 1093
    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v2

    new-array v9, v2, [Ljava/lang/Thread;

    .line 1094
    const/4 v2, 0x0

    .line 1095
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move v7, v2

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1096
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Thread;

    aput-object v5, v9, v7

    .line 1097
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/b/a/c/h;->s:Lcom/b/a/c/ai;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/StackTraceElement;

    invoke-interface {v5, v2}, Lcom/b/a/c/ai;->a([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1098
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    .line 1099
    goto :goto_0

    .line 1103
    :cond_0
    const/4 v2, 0x0

    new-array v9, v2, [Ljava/lang/Thread;

    .line 1107
    :cond_1
    const-string/jumbo v2, "com.crashlytics.CollectCustomKeys"

    const/4 v5, 0x1

    invoke-static {v11, v2, v5}, Lc/a/a/a/a/b/i;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1108
    new-instance v11, Ljava/util/TreeMap;

    invoke-direct {v11}, Ljava/util/TreeMap;-><init>()V

    .line 1119
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/b/a/c/h;->q:Lcom/b/a/c/u;

    move-object/from16 v2, p1

    move-object/from16 v5, p5

    move-object/from16 v7, p3

    invoke-static/range {v2 .. v23}, Lcom/b/a/c/ag;->a(Lcom/b/a/c/e;JLjava/lang/String;Lcom/b/a/c/aj;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;[Ljava/lang/Thread;Ljava/util/List;Ljava/util/Map;Lcom/b/a/c/u;Landroid/app/ActivityManager$RunningAppProcessInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Float;IZJJ)V

    .line 1124
    return-void

    .line 1110
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/b/a/c/h;->e:Lcom/b/a/c/i;

    .line 8644
    iget-object v2, v2, Lcom/b/a/c/i;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .line 1111
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v5

    const/4 v7, 0x1

    if-le v5, v7, :cond_3

    .line 1115
    new-instance v11, Ljava/util/TreeMap;

    invoke-direct {v11, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    goto :goto_1

    :cond_3
    move-object v11, v2

    goto :goto_1
.end method

.method private static a(Lcom/b/a/c/e;[Ljava/io/File;Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 1222
    sget-object v1, Lc/a/a/a/a/b/i;->a:Ljava/util/Comparator;

    invoke-static {p1, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 1224
    array-length v2, p1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    .line 1226
    :try_start_0
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v3

    const-string/jumbo v4, "CrashlyticsCore"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v6, "Found Non Fatal for session ID %s in %s "

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p2, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lc/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1229
    invoke-static {p0, v0}, Lcom/b/a/c/h;->a(Lcom/b/a/c/e;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1224
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1230
    :catch_0
    move-exception v0

    .line 1231
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v3

    const-string/jumbo v4, "CrashlyticsCore"

    const-string/jumbo v5, "Error writting non-fatal to session."

    invoke-interface {v3, v4, v5, v0}, Lc/a/a/a/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1235
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/b/a/c/h;Lc/a/a/a/a/g/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 59
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/b/a/c/h;->a(Lc/a/a/a/a/g/p;Z)V

    return-void
.end method

.method static synthetic a(Lcom/b/a/c/h;Lcom/b/a/c/a/a/d;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 21864
    .line 22434
    :try_start_0
    invoke-direct {p0}, Lcom/b/a/c/h;->g()[Ljava/io/File;

    move-result-object v3

    .line 22435
    array-length v4, v3

    if-le v4, v0, :cond_0

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-static {v3}, Lcom/b/a/c/h;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    .line 21869
    :goto_0
    if-nez v3, :cond_1

    .line 21870
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v0

    const-string/jumbo v2, "CrashlyticsCore"

    const-string/jumbo v3, "Tried to write a native crash while no session was open."

    const/4 v4, 0x0

    invoke-interface {v0, v2, v3, v4}, Lc/a/a/a/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21902
    const-string/jumbo v0, "Failed to flush to session begin file."

    invoke-static {v1, v0}, Lc/a/a/a/a/b/i;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 21903
    const-string/jumbo v0, "Failed to close fatal exception file output stream."

    invoke-static {v1, v0}, Lc/a/a/a/a/b/i;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 21904
    :goto_1
    return-void

    :cond_0
    move-object v3, v1

    .line 22435
    goto :goto_0

    .line 21875
    :cond_1
    :try_start_1
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v5, "<native-crash [%s (%s)]>"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p1, Lcom/b/a/c/a/a/d;->b:Lcom/b/a/c/a/a/e;

    iget-object v8, v8, Lcom/b/a/c/a/a/e;->b:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p1, Lcom/b/a/c/a/a/d;->b:Lcom/b/a/c/a/a/e;

    iget-object v8, v8, Lcom/b/a/c/a/a/e;->a:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/b/a/c/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 21884
    iget-object v4, p1, Lcom/b/a/c/a/a/d;->d:[Lcom/b/a/c/a/a/a;

    if-eqz v4, :cond_2

    iget-object v4, p1, Lcom/b/a/c/a/a/d;->d:[Lcom/b/a/c/a/a/a;

    array-length v4, v4

    if-lez v4, :cond_2

    .line 21886
    :goto_2
    if-eqz v0, :cond_3

    const-string/jumbo v0, "SessionCrash"

    .line 21889
    :goto_3
    new-instance v2, Lcom/b/a/c/d;

    invoke-virtual {p0}, Lcom/b/a/c/h;->c()Ljava/io/File;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v4, v0}, Lcom/b/a/c/d;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21890
    :try_start_2
    invoke-static {v2}, Lcom/b/a/c/e;->a(Ljava/io/OutputStream;)Lcom/b/a/c/e;

    move-result-object v1

    .line 21892
    new-instance v0, Lcom/b/a/c/w;

    invoke-virtual {p0}, Lcom/b/a/c/h;->c()Ljava/io/File;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/b/a/c/w;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, v3}, Lcom/b/a/c/w;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 21894
    new-instance v4, Lcom/b/a/c/u;

    iget-object v5, p0, Lcom/b/a/c/h;->e:Lcom/b/a/c/i;

    .line 23116
    iget-object v5, v5, Lc/a/a/a/i;->h:Landroid/content/Context;

    .line 21894
    iget-object v6, p0, Lcom/b/a/c/h;->p:Lc/a/a/a/a/f/a;

    invoke-direct {v4, v5, v6, v3}, Lcom/b/a/c/u;-><init>(Landroid/content/Context;Lc/a/a/a/a/f/a;Ljava/lang/String;)V

    .line 21896
    invoke-static {p1, v4, v0, v1}, Lcom/b/a/c/z;->a(Lcom/b/a/c/a/a/d;Lcom/b/a/c/u;Ljava/util/Map;Lcom/b/a/c/e;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 21902
    const-string/jumbo v0, "Failed to flush to session begin file."

    invoke-static {v1, v0}, Lc/a/a/a/a/b/i;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 21903
    const-string/jumbo v0, "Failed to close fatal exception file output stream."

    invoke-static {v2, v0}, Lc/a/a/a/a/b/i;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move v0, v2

    .line 21884
    goto :goto_2

    .line 21886
    :cond_3
    :try_start_3
    const-string/jumbo v0, "SessionMissingBinaryImages"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 21898
    :catch_0
    move-exception v0

    move-object v2, v1

    .line 21899
    :goto_4
    :try_start_4
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v3

    const-string/jumbo v4, "CrashlyticsCore"

    const-string/jumbo v5, "An error occurred in the native crash logger"

    invoke-interface {v3, v4, v5, v0}, Lc/a/a/a/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 21902
    const-string/jumbo v0, "Failed to flush to session begin file."

    invoke-static {v1, v0}, Lc/a/a/a/a/b/i;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 21903
    const-string/jumbo v0, "Failed to close fatal exception file output stream."

    invoke-static {v2, v0}, Lc/a/a/a/a/b/i;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 21902
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_5
    const-string/jumbo v3, "Failed to flush to session begin file."

    invoke-static {v1, v3}, Lc/a/a/a/a/b/i;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 21903
    const-string/jumbo v1, "Failed to close fatal exception file output stream."

    invoke-static {v2, v1}, Lc/a/a/a/a/b/i;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    .line 21902
    :catchall_1
    move-exception v0

    goto :goto_5

    .line 21898
    :catch_1
    move-exception v0

    goto :goto_4
.end method

.method static synthetic a(Lcom/b/a/c/h;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 13816
    .line 13819
    :try_start_0
    invoke-direct {p0}, Lcom/b/a/c/h;->f()Ljava/lang/String;

    move-result-object v0

    .line 13821
    if-nez v0, :cond_0

    .line 13822
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v0

    const-string/jumbo v2, "CrashlyticsCore"

    const-string/jumbo v3, "Tried to write a fatal exception while no session was open."

    const/4 v4, 0x0

    invoke-interface {v0, v2, v3, v4}, Lc/a/a/a/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13836
    const-string/jumbo v0, "Failed to flush to session begin file."

    invoke-static {v1, v0}, Lc/a/a/a/a/b/i;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 13837
    const-string/jumbo v0, "Failed to close fatal exception file output stream."

    invoke-static {v1, v0}, Lc/a/a/a/a/b/i;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 13838
    :goto_0
    return-void

    .line 13827
    :cond_0
    :try_start_1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/b/a/c/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 13829
    new-instance v7, Lcom/b/a/c/d;

    invoke-virtual {p0}, Lcom/b/a/c/h;->c()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "SessionCrash"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v2, v0}, Lcom/b/a/c/d;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13830
    :try_start_2
    invoke-static {v7}, Lcom/b/a/c/e;->a(Ljava/io/OutputStream;)Lcom/b/a/c/e;

    move-result-object v1

    .line 13831
    const-string/jumbo v5, "crash"

    const/4 v6, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/b/a/c/h;->a(Lcom/b/a/c/e;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 13836
    const-string/jumbo v0, "Failed to flush to session begin file."

    invoke-static {v1, v0}, Lc/a/a/a/a/b/i;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 13837
    const-string/jumbo v0, "Failed to close fatal exception file output stream."

    invoke-static {v7, v0}, Lc/a/a/a/a/b/i;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_0

    .line 13832
    :catch_0
    move-exception v0

    move-object v2, v1

    .line 13833
    :goto_1
    :try_start_3
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v3

    const-string/jumbo v4, "CrashlyticsCore"

    const-string/jumbo v5, "An error occurred in the fatal exception logger"

    invoke-interface {v3, v4, v5, v0}, Lc/a/a/a/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 13836
    const-string/jumbo v0, "Failed to flush to session begin file."

    invoke-static {v1, v0}, Lc/a/a/a/a/b/i;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 13837
    const-string/jumbo v0, "Failed to close fatal exception file output stream."

    invoke-static {v2, v0}, Lc/a/a/a/a/b/i;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_0

    .line 13836
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_2
    const-string/jumbo v3, "Failed to flush to session begin file."

    invoke-static {v1, v3}, Lc/a/a/a/a/b/i;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 13837
    const-string/jumbo v1, "Failed to close fatal exception file output stream."

    invoke-static {v2, v1}, Lc/a/a/a/a/b/i;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    .line 13836
    :catchall_1
    move-exception v0

    move-object v2, v7

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_2

    .line 13832
    :catch_1
    move-exception v0

    move-object v2, v7

    goto :goto_1
.end method

.method private static a(Ljava/io/InputStream;Lcom/b/a/c/e;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1275
    new-array v2, p2, [B

    move v0, v1

    .line 1279
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    array-length v3, v2

    sub-int/2addr v3, v0

    invoke-virtual {p0, v2, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-ltz v3, :cond_0

    .line 1281
    add-int/2addr v0, v3

    goto :goto_0

    .line 8745
    :cond_0
    array-length v0, v2

    .line 8751
    iget v3, p1, Lcom/b/a/c/e;->b:I

    iget v4, p1, Lcom/b/a/c/e;->c:I

    sub-int/2addr v3, v4

    if-lt v3, v0, :cond_1

    .line 8753
    iget-object v3, p1, Lcom/b/a/c/e;->a:[B

    iget v4, p1, Lcom/b/a/c/e;->c:I

    invoke-static {v2, v1, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8754
    iget v1, p1, Lcom/b/a/c/e;->c:I

    add-int/2addr v0, v1

    iput v0, p1, Lcom/b/a/c/e;->c:I

    .line 8771
    :goto_1
    return-void

    .line 8758
    :cond_1
    iget v3, p1, Lcom/b/a/c/e;->b:I

    iget v4, p1, Lcom/b/a/c/e;->c:I

    sub-int/2addr v3, v4

    .line 8759
    iget-object v4, p1, Lcom/b/a/c/e;->a:[B

    iget v5, p1, Lcom/b/a/c/e;->c:I

    invoke-static {v2, v1, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8760
    add-int/lit8 v4, v3, 0x0

    .line 8761
    sub-int/2addr v0, v3

    .line 8762
    iget v3, p1, Lcom/b/a/c/e;->b:I

    iput v3, p1, Lcom/b/a/c/e;->c:I

    .line 8763
    invoke-virtual {p1}, Lcom/b/a/c/e;->b()V

    .line 8768
    iget v3, p1, Lcom/b/a/c/e;->b:I

    if-gt v0, v3, :cond_2

    .line 8770
    iget-object v3, p1, Lcom/b/a/c/e;->a:[B

    invoke-static {v2, v4, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8771
    iput v0, p1, Lcom/b/a/c/e;->c:I

    goto :goto_1

    .line 8774
    :cond_2
    iget-object v1, p1, Lcom/b/a/c/e;->d:Ljava/io/OutputStream;

    invoke-virtual {v1, v2, v4, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1
.end method

.method private a(Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 649
    invoke-virtual {p0}, Lcom/b/a/c/h;->c()Ljava/io/File;

    move-result-object v0

    new-instance v1, Lcom/b/a/c/h$b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "SessionEvent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/b/a/c/h$b;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/b/a/c/h;->c:Ljava/util/Comparator;

    invoke-static {v0, v1, p2, v2}, Lcom/b/a/c/am;->a(Ljava/io/File;Ljava/io/FilenameFilter;ILjava/util/Comparator;)V

    .line 652
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 1365
    const-class v0, Lcom/b/a/a/a;

    invoke-static {v0}, Lc/a/a/a/c;->a(Ljava/lang/Class;)Lc/a/a/a/i;

    move-result-object v0

    check-cast v0, Lcom/b/a/a/a;

    .line 1366
    if-nez v0, :cond_1

    .line 1367
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v0

    const-string/jumbo v1, "CrashlyticsCore"

    const-string/jumbo v2, "Answers is not available"

    invoke-interface {v0, v1, v2}, Lc/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1371
    :cond_0
    :goto_0
    return-void

    .line 1370
    :cond_1
    new-instance v1, Lc/a/a/a/a/b/j$a;

    invoke-direct {v1, p0, p1}, Lc/a/a/a/a/b/j$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 9332
    iget-object v2, v0, Lcom/b/a/a/a;->a:Lcom/b/a/a/q;

    if-eqz v2, :cond_0

    .line 9333
    iget-object v0, v0, Lcom/b/a/a/a;->a:Lcom/b/a/a/q;

    .line 10036
    iget-object v2, v1, Lc/a/a/a/a/b/j;->a:Ljava/lang/String;

    .line 10039
    iget-object v1, v1, Lc/a/a/a/a/b/j;->b:Ljava/lang/String;

    .line 10105
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    if-ne v3, v4, :cond_2

    .line 10106
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "onCrash called from main thread!!!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10112
    :cond_2
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v3

    const-string/jumbo v4, "Answers"

    const-string/jumbo v5, "Logged crash"

    invoke-interface {v3, v4, v5}, Lc/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 10113
    iget-object v0, v0, Lcom/b/a/a/q;->b:Lcom/b/a/a/b;

    .line 12050
    const-string/jumbo v3, "sessionId"

    invoke-static {v3, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    .line 12051
    new-instance v3, Lcom/b/a/a/s$a;

    sget-object v4, Lcom/b/a/a/s$b;->e:Lcom/b/a/a/s$b;

    invoke-direct {v3, v4}, Lcom/b/a/a/s$a;-><init>(Lcom/b/a/a/s$b;)V

    .line 12109
    iput-object v2, v3, Lcom/b/a/a/s$a;->c:Ljava/util/Map;

    .line 11055
    const-string/jumbo v2, "exceptionName"

    invoke-static {v2, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    .line 12119
    iput-object v1, v3, Lcom/b/a/a/s$a;->e:Ljava/util/Map;

    .line 13058
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/b/a/a/b;->a(Lcom/b/a/a/s$a;ZZ)V

    goto :goto_0
.end method

.method private a([Ljava/io/File;II)V
    .locals 15

    .prologue
    .line 549
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v2

    const-string/jumbo v3, "CrashlyticsCore"

    const-string/jumbo v4, "Closing open sessions."

    invoke-interface {v2, v3, v4}, Lc/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    :goto_0
    move-object/from16 v0, p1

    array-length v2, v0

    move/from16 v0, p2

    if-ge v0, v2, :cond_8

    .line 552
    aget-object v8, p1, p2

    .line 553
    invoke-static {v8}, Lcom/b/a/c/h;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v9

    .line 556
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v2

    const-string/jumbo v3, "CrashlyticsCore"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Closing session: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lc/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5133
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v2

    const-string/jumbo v3, "CrashlyticsCore"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Collecting session parts for ID "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lc/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5135
    new-instance v2, Lcom/b/a/c/h$b;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "SessionCrash"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/b/a/c/h$b;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/b/a/c/h;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v5

    .line 5137
    if-eqz v5, :cond_3

    array-length v2, v5

    if-lez v2, :cond_3

    const/4 v2, 0x1

    .line 5138
    :goto_1
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v3

    const-string/jumbo v4, "CrashlyticsCore"

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v7, "Session %s has fatal exception: %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v9, v10, v11

    const/4 v11, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v6}, Lc/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5141
    new-instance v3, Lcom/b/a/c/h$b;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "SessionEvent"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/b/a/c/h$b;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/b/a/c/h;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v4

    .line 5143
    if-eqz v4, :cond_4

    array-length v3, v4

    if-lez v3, :cond_4

    const/4 v3, 0x1

    .line 5144
    :goto_2
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v6

    const-string/jumbo v7, "CrashlyticsCore"

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v11, "Session %s has non-fatal exceptions: %s"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v9, v12, v13

    const/4 v13, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v7, v10}, Lc/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5147
    if-nez v2, :cond_0

    if-eqz v3, :cond_7

    .line 5712
    :cond_0
    array-length v3, v4

    move/from16 v0, p3

    if-le v3, v0, :cond_9

    .line 5713
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v3

    const-string/jumbo v4, "CrashlyticsCore"

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v7, "Trimming down to %d logged exceptions."

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v6, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v6}, Lc/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5716
    move/from16 v0, p3

    invoke-direct {p0, v9, v0}, Lcom/b/a/c/h;->a(Ljava/lang/String;I)V

    .line 5717
    new-instance v3, Lcom/b/a/c/h$b;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "SessionEvent"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/b/a/c/h$b;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/b/a/c/h;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v3

    move-object v7, v3

    .line 5150
    :goto_3
    if-eqz v2, :cond_5

    const/4 v2, 0x0

    aget-object v2, v5, v2

    move-object v6, v2

    .line 6167
    :goto_4
    if-eqz v6, :cond_6

    const/4 v2, 0x1

    .line 6170
    :goto_5
    const/4 v5, 0x0

    .line 6171
    const/4 v3, 0x0

    .line 6173
    :try_start_0
    new-instance v4, Lcom/b/a/c/d;

    invoke-virtual {p0}, Lcom/b/a/c/h;->c()Ljava/io/File;

    move-result-object v10

    invoke-direct {v4, v10, v9}, Lcom/b/a/c/d;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6174
    :try_start_1
    invoke-static {v4}, Lcom/b/a/c/e;->a(Ljava/io/OutputStream;)Lcom/b/a/c/e;

    move-result-object v3

    .line 6176
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v5

    const-string/jumbo v10, "CrashlyticsCore"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "Collecting SessionStart data for session ID "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Lc/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6178
    invoke-static {v3, v8}, Lcom/b/a/c/h;->a(Lcom/b/a/c/e;Ljava/io/File;)V

    .line 6180
    const/4 v5, 0x4

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {v3, v5, v10, v11}, Lcom/b/a/c/e;->a(IJ)V

    .line 6181
    const/4 v5, 0x5

    invoke-virtual {v3, v5, v2}, Lcom/b/a/c/e;->a(IZ)V

    .line 6183
    const/16 v5, 0xb

    const/4 v8, 0x1

    invoke-virtual {v3, v5, v8}, Lcom/b/a/c/e;->a(II)V

    .line 6185
    const/16 v5, 0xc

    const/4 v8, 0x3

    invoke-virtual {v3, v5, v8}, Lcom/b/a/c/e;->b(II)V

    .line 6187
    invoke-direct {p0, v3, v9}, Lcom/b/a/c/h;->a(Lcom/b/a/c/e;Ljava/lang/String;)V

    .line 6189
    invoke-static {v3, v7, v9}, Lcom/b/a/c/h;->a(Lcom/b/a/c/e;[Ljava/io/File;Ljava/lang/String;)V

    .line 6191
    if-eqz v2, :cond_1

    .line 6192
    invoke-static {v3, v6}, Lcom/b/a/c/h;->a(Lcom/b/a/c/e;Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6202
    :cond_1
    const-string/jumbo v2, "Error flushing session file stream"

    invoke-static {v3, v2}, Lc/a/a/a/a/b/i;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 6211
    const-string/jumbo v2, "Failed to close CLS file"

    invoke-static {v4, v2}, Lc/a/a/a/a/b/i;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 5157
    :cond_2
    :goto_6
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v2

    const-string/jumbo v3, "CrashlyticsCore"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Removing session part files for ID "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lc/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5159
    invoke-direct {p0, v9}, Lcom/b/a/c/h;->b(Ljava/lang/String;)V

    .line 551
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_0

    .line 5137
    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 5143
    :cond_4
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 5150
    :cond_5
    const/4 v2, 0x0

    move-object v6, v2

    goto/16 :goto_4

    .line 6167
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_5

    .line 6194
    :catch_0
    move-exception v2

    move-object v4, v5

    .line 6195
    :goto_7
    :try_start_2
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v5

    const-string/jumbo v6, "CrashlyticsCore"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "Failed to write session file for session ID: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7, v2}, Lc/a/a/a/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 6202
    const-string/jumbo v2, "Error flushing session file stream"

    invoke-static {v3, v2}, Lc/a/a/a/a/b/i;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 6574
    if-eqz v4, :cond_2

    .line 6579
    :try_start_3
    invoke-virtual {v4}, Lcom/b/a/c/d;->a()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_6

    .line 6580
    :catch_1
    move-exception v2

    .line 6581
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v3

    const-string/jumbo v4, "CrashlyticsCore"

    const-string/jumbo v5, "Error closing session file stream in the presence of an exception"

    invoke-interface {v3, v4, v5, v2}, Lc/a/a/a/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 6202
    :catchall_0
    move-exception v2

    move-object v4, v5

    :goto_8
    const-string/jumbo v5, "Error flushing session file stream"

    invoke-static {v3, v5}, Lc/a/a/a/a/b/i;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 6211
    const-string/jumbo v3, "Failed to close CLS file"

    invoke-static {v4, v3}, Lc/a/a/a/a/b/i;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v2

    .line 5153
    :cond_7
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v2

    const-string/jumbo v3, "CrashlyticsCore"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "No events present for session ID "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lc/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 561
    :cond_8
    return-void

    .line 6202
    :catchall_1
    move-exception v2

    goto :goto_8

    .line 6194
    :catch_2
    move-exception v2

    goto :goto_7

    :cond_9
    move-object v7, v4

    goto/16 :goto_3
.end method

.method private static a([Ljava/io/File;Ljava/util/Set;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/io/File;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 686
    array-length v1, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p0, v0

    .line 687
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 688
    sget-object v4, Lcom/b/a/c/h;->j:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 690
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_1

    .line 691
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v0

    const-string/jumbo v1, "CrashlyticsCore"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Deleting unknown file: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lc/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 703
    :cond_0
    return-void

    .line 696
    :cond_1
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 697
    invoke-interface {p1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 698
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v4

    const-string/jumbo v5, "CrashlyticsCore"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Trimming session file: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Lc/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 686
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/b/a/c/h;Lc/a/a/a/a/g/t;)Z
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lcom/b/a/c/h;->a(Lc/a/a/a/a/g/t;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/b/a/c/h;Ljava/io/FilenameFilter;)[Ljava/io/File;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lcom/b/a/c/h;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/File;Ljava/io/FilenameFilter;)[Ljava/io/File;
    .locals 1

    .prologue
    .line 628
    invoke-virtual {p0, p1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/c/h;->a([Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static a([Ljava/io/File;)[Ljava/io/File;
    .locals 1

    .prologue
    .line 636
    if-nez p0, :cond_0

    const/4 v0, 0x0

    new-array p0, v0, [Ljava/io/File;

    :cond_0
    return-object p0
.end method

.method static synthetic b(Lcom/b/a/c/h;)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 14494
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 14495
    new-instance v3, Lcom/b/a/c/c;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/b/a/c/h;->o:Lc/a/a/a/a/b/o;

    invoke-direct {v3, v4}, Lcom/b/a/c/c;-><init>(Lc/a/a/a/a/b/o;)V

    invoke-virtual {v3}, Lcom/b/a/c/c;->toString()Ljava/lang/String;

    move-result-object v18

    .line 14497
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v3

    const-string/jumbo v4, "CrashlyticsCore"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Opening a new session with ID "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lc/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 14955
    const/4 v5, 0x0

    .line 14956
    const/4 v3, 0x0

    .line 14958
    :try_start_0
    new-instance v4, Lcom/b/a/c/d;

    invoke-virtual/range {p0 .. p0}, Lcom/b/a/c/h;->c()Ljava/io/File;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "BeginSession"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Lcom/b/a/c/d;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14959
    :try_start_1
    invoke-static {v4}, Lcom/b/a/c/e;->a(Ljava/io/OutputStream;)Lcom/b/a/c/e;

    move-result-object v3

    .line 14961
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v6, "Crashlytics Android SDK/%s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 15355
    const-string/jumbo v9, "2.3.15.167"

    .line 14961
    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 14963
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    .line 14965
    move-object/from16 v0, v18

    invoke-static {v3, v0, v5, v6, v7}, Lcom/b/a/c/ag;->a(Lcom/b/a/c/e;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    .line 14967
    const-string/jumbo v2, "Failed to flush to session begin file."

    invoke-static {v3, v2}, Lc/a/a/a/a/b/i;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 14968
    const-string/jumbo v2, "Failed to close begin session file."

    invoke-static {v4, v2}, Lc/a/a/a/a/b/i;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 15973
    const/4 v4, 0x0

    .line 15974
    const/4 v3, 0x0

    .line 15976
    :try_start_2
    new-instance v10, Lcom/b/a/c/d;

    invoke-virtual/range {p0 .. p0}, Lcom/b/a/c/h;->c()Ljava/io/File;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "SessionApp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v10, v2, v5}, Lcom/b/a/c/d;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 15977
    :try_start_3
    invoke-static {v10}, Lcom/b/a/c/e;->a(Ljava/io/OutputStream;)Lcom/b/a/c/e;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    move-result-object v2

    .line 15979
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/b/a/c/h;->o:Lc/a/a/a/a/b/o;

    .line 16177
    iget-object v3, v3, Lc/a/a/a/a/b/o;->d:Ljava/lang/String;

    .line 15980
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/b/a/c/h;->h:Lcom/b/a/c/a;

    iget-object v5, v4, Lcom/b/a/c/a;->e:Ljava/lang/String;

    .line 15981
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/b/a/c/h;->h:Lcom/b/a/c/a;

    iget-object v6, v4, Lcom/b/a/c/a;->f:Ljava/lang/String;

    .line 15982
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/b/a/c/h;->o:Lc/a/a/a/a/b/o;

    invoke-virtual {v4}, Lc/a/a/a/a/b/o;->a()Ljava/lang/String;

    move-result-object v7

    .line 15983
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/b/a/c/h;->h:Lcom/b/a/c/a;

    iget-object v4, v4, Lcom/b/a/c/a;->c:Ljava/lang/String;

    invoke-static {v4}, Lc/a/a/a/a/b/l;->a(Ljava/lang/String;)Lc/a/a/a/a/b/l;

    move-result-object v4

    .line 17038
    iget v8, v4, Lc/a/a/a/a/b/l;->e:I

    .line 15986
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/b/a/c/h;->h:Lcom/b/a/c/a;

    iget-object v4, v4, Lcom/b/a/c/a;->a:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/b/a/c/h;->t:Ljava/lang/String;

    invoke-static/range {v2 .. v9}, Lcom/b/a/c/ag;->a(Lcom/b/a/c/e;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    .line 15989
    const-string/jumbo v3, "Failed to flush to session app file."

    invoke-static {v2, v3}, Lc/a/a/a/a/b/i;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 15990
    const-string/jumbo v2, "Failed to close session app file."

    invoke-static {v10, v2}, Lc/a/a/a/a/b/i;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 17995
    const/4 v5, 0x0

    .line 17996
    const/4 v3, 0x0

    .line 17999
    :try_start_5
    new-instance v4, Lcom/b/a/c/d;

    invoke-virtual/range {p0 .. p0}, Lcom/b/a/c/h;->c()Ljava/io/File;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "SessionOS"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v2, v6}, Lcom/b/a/c/d;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 18000
    :try_start_6
    invoke-static {v4}, Lcom/b/a/c/e;->a(Ljava/io/OutputStream;)Lcom/b/a/c/e;

    move-result-object v3

    .line 18002
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/b/a/c/h;->e:Lcom/b/a/c/i;

    .line 18116
    iget-object v2, v2, Lc/a/a/a/i;->h:Landroid/content/Context;

    .line 18002
    invoke-static {v2}, Lc/a/a/a/a/b/i;->f(Landroid/content/Context;)Z

    move-result v2

    .line 18004
    invoke-static {v3, v2}, Lcom/b/a/c/ag;->a(Lcom/b/a/c/e;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 18006
    const-string/jumbo v2, "Failed to flush to session OS file."

    invoke-static {v3, v2}, Lc/a/a/a/a/b/i;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 18007
    const-string/jumbo v2, "Failed to close session OS file."

    invoke-static {v4, v2}, Lc/a/a/a/a/b/i;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 19013
    const/4 v4, 0x0

    .line 19014
    const/4 v3, 0x0

    .line 19016
    :try_start_7
    new-instance v17, Lcom/b/a/c/d;

    invoke-virtual/range {p0 .. p0}, Lcom/b/a/c/h;->c()Ljava/io/File;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "SessionDevice"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-direct {v0, v2, v5}, Lcom/b/a/c/d;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 19017
    :try_start_8
    invoke-static/range {v17 .. v17}, Lcom/b/a/c/e;->a(Ljava/io/OutputStream;)Lcom/b/a/c/e;

    move-result-object v3

    .line 19019
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/b/a/c/h;->e:Lcom/b/a/c/i;

    .line 19116
    iget-object v2, v2, Lc/a/a/a/i;->h:Landroid/content/Context;

    .line 19020
    new-instance v6, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 19022
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/b/a/c/h;->o:Lc/a/a/a/a/b/o;

    .line 19223
    const-string/jumbo v4, ""

    .line 19225
    iget-boolean v7, v5, Lc/a/a/a/a/b/o;->a:Z

    if-eqz v7, :cond_0

    .line 19226
    invoke-virtual {v5}, Lc/a/a/a/a/b/o;->g()Ljava/lang/String;

    move-result-object v4

    .line 19228
    if-nez v4, :cond_0

    .line 19229
    iget-object v4, v5, Lc/a/a/a/a/b/o;->c:Landroid/content/Context;

    invoke-static {v4}, Lc/a/a/a/a/b/i;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 19230
    const-string/jumbo v4, "crashlytics.installation.id"

    const/4 v8, 0x0

    invoke-interface {v7, v4, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 19232
    if-nez v4, :cond_0

    .line 19233
    invoke-virtual {v5, v7}, Lc/a/a/a/a/b/o;->a(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v4

    .line 19023
    :cond_0
    invoke-static {}, Lc/a/a/a/a/b/i;->a()I

    move-result v5

    .line 19024
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v7

    .line 19025
    invoke-static {}, Lc/a/a/a/a/b/i;->b()J

    move-result-wide v8

    .line 19026
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockCount()I

    move-result v10

    int-to-long v10, v10

    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v12, v6

    mul-long/2addr v10, v12

    .line 19027
    invoke-static {v2}, Lc/a/a/a/a/b/i;->e(Landroid/content/Context;)Z

    move-result v12

    .line 19029
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/b/a/c/h;->o:Lc/a/a/a/a/b/o;

    invoke-virtual {v6}, Lc/a/a/a/a/b/o;->c()Ljava/util/Map;

    move-result-object v13

    .line 19031
    invoke-static {v2}, Lc/a/a/a/a/b/i;->g(Landroid/content/Context;)I

    move-result v14

    .line 19033
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v15, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v16, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-static/range {v3 .. v16}, Lcom/b/a/c/ag;->a(Lcom/b/a/c/e;Ljava/lang/String;ILjava/lang/String;IJJZLjava/util/Map;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 19037
    const-string/jumbo v2, "Failed to flush session device info."

    invoke-static {v3, v2}, Lc/a/a/a/a/b/i;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 19038
    const-string/jumbo v2, "Failed to close session device file."

    move-object/from16 v0, v17

    invoke-static {v0, v2}, Lc/a/a/a/a/b/i;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 14504
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/b/a/c/h;->q:Lcom/b/a/c/u;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/b/a/c/u;->a(Ljava/lang/String;)V

    .line 59
    return-void

    .line 14967
    :catchall_0
    move-exception v2

    move-object v4, v5

    :goto_0
    const-string/jumbo v5, "Failed to flush to session begin file."

    invoke-static {v3, v5}, Lc/a/a/a/a/b/i;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 14968
    const-string/jumbo v3, "Failed to close begin session file."

    invoke-static {v4, v3}, Lc/a/a/a/a/b/i;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v2

    .line 15989
    :catchall_1
    move-exception v2

    :goto_1
    const-string/jumbo v5, "Failed to flush to session app file."

    invoke-static {v3, v5}, Lc/a/a/a/a/b/i;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 15990
    const-string/jumbo v3, "Failed to close session app file."

    invoke-static {v4, v3}, Lc/a/a/a/a/b/i;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v2

    .line 18006
    :catchall_2
    move-exception v2

    move-object v4, v5

    :goto_2
    const-string/jumbo v5, "Failed to flush to session OS file."

    invoke-static {v3, v5}, Lc/a/a/a/a/b/i;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 18007
    const-string/jumbo v3, "Failed to close session OS file."

    invoke-static {v4, v3}, Lc/a/a/a/a/b/i;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v2

    .line 19037
    :catchall_3
    move-exception v2

    :goto_3
    const-string/jumbo v5, "Failed to flush session device info."

    invoke-static {v3, v5}, Lc/a/a/a/a/b/i;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 19038
    const-string/jumbo v3, "Failed to close session device file."

    invoke-static {v4, v3}, Lc/a/a/a/a/b/i;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v2

    .line 19037
    :catchall_4
    move-exception v2

    move-object/from16 v4, v17

    goto :goto_3

    .line 18006
    :catchall_5
    move-exception v2

    goto :goto_2

    .line 15989
    :catchall_6
    move-exception v2

    move-object v4, v10

    goto :goto_1

    :catchall_7
    move-exception v3

    move-object v4, v10

    move-object/from16 v19, v2

    move-object v2, v3

    move-object/from16 v3, v19

    goto :goto_1

    .line 14967
    :catchall_8
    move-exception v2

    goto :goto_0
.end method

.method static synthetic b(Lcom/b/a/c/h;Lc/a/a/a/a/g/t;)V
    .locals 8

    .prologue
    .line 19336
    if-nez p1, :cond_1

    .line 19337
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v0

    const-string/jumbo v1, "CrashlyticsCore"

    const-string/jumbo v2, "Cannot send reports. Settings are unavailable."

    invoke-interface {v0, v1, v2}, Lc/a/a/a/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19339
    :cond_0
    return-void

    .line 19342
    :cond_1
    iget-object v0, p0, Lcom/b/a/c/h;->e:Lcom/b/a/c/i;

    .line 20116
    iget-object v1, v0, Lc/a/a/a/i;->h:Landroid/content/Context;

    .line 19343
    iget-object v0, p1, Lc/a/a/a/a/g/t;->a:Lc/a/a/a/a/g/e;

    iget-object v0, v0, Lc/a/a/a/a/g/e;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/b/a/c/h;->a(Ljava/lang/String;)Lcom/b/a/c/o;

    move-result-object v0

    .line 19344
    new-instance v2, Lcom/b/a/c/af;

    iget-object v3, p0, Lcom/b/a/c/h;->h:Lcom/b/a/c/a;

    iget-object v3, v3, Lcom/b/a/c/a;->a:Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Lcom/b/a/c/af;-><init>(Ljava/lang/String;Lcom/b/a/c/o;)V

    .line 20603
    sget-object v0, Lcom/b/a/c/h;->a:Ljava/io/FilenameFilter;

    invoke-virtual {p0, v0}, Lcom/b/a/c/h;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v3

    .line 19346
    array-length v4, v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v5, v3, v0

    .line 19347
    new-instance v6, Lcom/b/a/c/ah;

    sget-object v7, Lcom/b/a/c/h;->k:Ljava/util/Map;

    invoke-direct {v6, v5, v7}, Lcom/b/a/c/ah;-><init>(Ljava/io/File;Ljava/util/Map;)V

    .line 19349
    iget-object v5, p0, Lcom/b/a/c/h;->f:Lcom/b/a/c/g;

    new-instance v7, Lcom/b/a/c/h$e;

    invoke-direct {v7, v1, v6, v2}, Lcom/b/a/c/h$e;-><init>(Landroid/content/Context;Lcom/b/a/c/ae;Lcom/b/a/c/af;)V

    invoke-virtual {v5, v7}, Lcom/b/a/c/g;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 19346
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/b/a/c/h;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 59
    .line 20911
    invoke-direct {p0}, Lcom/b/a/c/h;->f()Ljava/lang/String;

    move-result-object v8

    .line 20913
    if-nez v8, :cond_0

    .line 20914
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v0

    const-string/jumbo v2, "CrashlyticsCore"

    const-string/jumbo v3, "Tried to write a non-fatal exception while no session was open."

    invoke-interface {v0, v2, v3, v1}, Lc/a/a/a/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20951
    :goto_0
    return-void

    .line 20919
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 21356
    const-class v0, Lcom/b/a/a/a;

    invoke-static {v0}, Lc/a/a/a/c;->a(Ljava/lang/Class;)Lc/a/a/a/i;

    move-result-object v0

    check-cast v0, Lcom/b/a/a/a;

    .line 21357
    if-nez v0, :cond_1

    .line 21358
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v0

    const-string/jumbo v2, "CrashlyticsCore"

    const-string/jumbo v3, "Answers is not available"

    invoke-interface {v0, v2, v3}, Lc/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 20924
    :goto_1
    :try_start_0
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v0

    const-string/jumbo v2, "CrashlyticsCore"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Crashlytics is logging non-fatal exception \""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\" from thread "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lc/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 20928
    iget-object v0, p0, Lcom/b/a/c/h;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    invoke-static {v0}, Lc/a/a/a/a/b/i;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 20930
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "SessionEvent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 20932
    new-instance v7, Lcom/b/a/c/d;

    invoke-virtual {p0}, Lcom/b/a/c/h;->c()Ljava/io/File;

    move-result-object v2

    invoke-direct {v7, v2, v0}, Lcom/b/a/c/d;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20934
    :try_start_1
    invoke-static {v7}, Lcom/b/a/c/e;->a(Ljava/io/OutputStream;)Lcom/b/a/c/e;

    move-result-object v1

    .line 20935
    const-string/jumbo v5, "error"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/b/a/c/h;->a(Lcom/b/a/c/e;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 20940
    const-string/jumbo v0, "Failed to flush to non-fatal file."

    invoke-static {v1, v0}, Lc/a/a/a/a/b/i;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 20941
    const-string/jumbo v0, "Failed to close non-fatal file output stream."

    invoke-static {v7, v0}, Lc/a/a/a/a/b/i;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 20947
    :goto_2
    const/16 v0, 0x40

    :try_start_2
    invoke-direct {p0, v8, v0}, Lcom/b/a/c/h;->a(Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 20948
    :catch_0
    move-exception v0

    .line 20949
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v1

    const-string/jumbo v2, "CrashlyticsCore"

    const-string/jumbo v3, "An error occurred when trimming non-fatal files."

    invoke-interface {v1, v2, v3, v0}, Lc/a/a/a/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 21361
    :cond_1
    new-instance v0, Lc/a/a/a/a/b/j$b;

    invoke-direct {v0, v8, v2}, Lc/a/a/a/a/b/j$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 20936
    :catch_1
    move-exception v0

    move-object v2, v1

    .line 20937
    :goto_3
    :try_start_3
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v3

    const-string/jumbo v4, "CrashlyticsCore"

    const-string/jumbo v5, "An error occurred in the non-fatal exception logger"

    invoke-interface {v3, v4, v5, v0}, Lc/a/a/a/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 20940
    const-string/jumbo v0, "Failed to flush to non-fatal file."

    invoke-static {v1, v0}, Lc/a/a/a/a/b/i;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 20941
    const-string/jumbo v0, "Failed to close non-fatal file output stream."

    invoke-static {v2, v0}, Lc/a/a/a/a/b/i;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_2

    .line 20940
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_4
    const-string/jumbo v3, "Failed to flush to non-fatal file."

    invoke-static {v1, v3}, Lc/a/a/a/a/b/i;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 20941
    const-string/jumbo v1, "Failed to close non-fatal file output stream."

    invoke-static {v2, v1}, Lc/a/a/a/a/b/i;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    .line 20940
    :catchall_1
    move-exception v0

    move-object v2, v7

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_4

    .line 20936
    :catch_2
    move-exception v0

    move-object v2, v7

    goto :goto_3
.end method

.method private b(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 590
    .line 6599
    new-instance v0, Lcom/b/a/c/h$f;

    invoke-direct {v0, p1}, Lcom/b/a/c/h$f;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/b/a/c/h;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    .line 590
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 591
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 590
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 593
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/b/a/c/h;)Lcom/b/a/c/u;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/b/a/c/h;->q:Lcom/b/a/c/u;

    return-object v0
.end method

.method static synthetic d(Lcom/b/a/c/h;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/b/a/c/h;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/b/a/c/h;->j:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method private f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 424
    invoke-direct {p0}, Lcom/b/a/c/h;->g()[Ljava/io/File;

    move-result-object v0

    .line 425
    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/b/a/c/h;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g()[Ljava/io/File;
    .locals 2

    .prologue
    .line 611
    .line 6607
    new-instance v0, Lcom/b/a/c/h$b;

    const-string/jumbo v1, "BeginSession"

    invoke-direct {v0, v1}, Lcom/b/a/c/h$b;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/b/a/c/h;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 612
    sget-object v1, Lcom/b/a/c/h;->b:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 613
    return-object v0
.end method


# virtual methods
.method final a(Ljava/lang/String;)Lcom/b/a/c/o;
    .locals 4

    .prologue
    .line 1327
    iget-object v0, p0, Lcom/b/a/c/h;->e:Lcom/b/a/c/i;

    .line 9116
    iget-object v0, v0, Lc/a/a/a/i;->h:Landroid/content/Context;

    .line 1328
    const-string/jumbo v1, "com.crashlytics.ApiEndpoint"

    invoke-static {v0, v1}, Lc/a/a/a/a/b/i;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1331
    new-instance v1, Lcom/b/a/c/p;

    iget-object v2, p0, Lcom/b/a/c/h;->e:Lcom/b/a/c/i;

    iget-object v3, p0, Lcom/b/a/c/h;->n:Lc/a/a/a/a/e/e;

    invoke-direct {v1, v2, v0, p1, v3}, Lcom/b/a/c/p;-><init>(Lc/a/a/a/i;Ljava/lang/String;Ljava/lang/String;Lc/a/a/a/a/e/e;)V

    return-object v1
.end method

.method final a()V
    .locals 6

    .prologue
    .line 785
    invoke-virtual {p0}, Lcom/b/a/c/h;->d()Ljava/io/File;

    move-result-object v1

    .line 786
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 804
    :goto_0
    return-void

    .line 790
    :cond_0
    new-instance v0, Lcom/b/a/c/h$c;

    invoke-direct {v0}, Lcom/b/a/c/h$c;-><init>()V

    invoke-static {v1, v0}, Lcom/b/a/c/h;->a(Ljava/io/File;Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    .line 793
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v2, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 795
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 797
    const/4 v0, 0x0

    .line 798
    :goto_1
    array-length v4, v2

    if-ge v0, v4, :cond_1

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    const/4 v5, 0x4

    if-ge v4, v5, :cond_1

    .line 799
    aget-object v4, v2, v0

    invoke-static {v4}, Lcom/b/a/c/h;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 798
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 6632
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/c/h;->a([Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    .line 803
    invoke-static {v0, v3}, Lcom/b/a/c/h;->a([Ljava/io/File;Ljava/util/Set;)V

    goto :goto_0
.end method

.method final a(Lc/a/a/a/a/g/p;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 516
    if-eqz p2, :cond_0

    move v0, v1

    .line 518
    :goto_0
    add-int/lit8 v4, v0, 0x8

    .line 3670
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 3672
    invoke-direct {p0}, Lcom/b/a/c/h;->g()[Ljava/io/File;

    move-result-object v6

    .line 3673
    array-length v7, v6

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    move v4, v2

    .line 3675
    :goto_1
    if-ge v4, v7, :cond_1

    .line 3676
    aget-object v8, v6, v4

    invoke-static {v8}, Lcom/b/a/c/h;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v8

    .line 3677
    invoke-interface {v5, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3675
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    move v0, v2

    .line 516
    goto :goto_0

    .line 3680
    :cond_1
    iget-object v4, p0, Lcom/b/a/c/h;->q:Lcom/b/a/c/u;

    invoke-virtual {v4, v5}, Lcom/b/a/c/u;->a(Ljava/util/Set;)V

    .line 3682
    new-instance v4, Lcom/b/a/c/h$a;

    invoke-direct {v4, v2}, Lcom/b/a/c/h$a;-><init>(B)V

    invoke-virtual {p0, v4}, Lcom/b/a/c/h;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v4

    invoke-static {v4, v5}, Lcom/b/a/c/h;->a([Ljava/io/File;Ljava/util/Set;)V

    .line 520
    invoke-direct {p0}, Lcom/b/a/c/h;->g()[Ljava/io/File;

    move-result-object v6

    .line 522
    array-length v4, v6

    if-gt v4, v0, :cond_2

    .line 523
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v0

    const-string/jumbo v1, "CrashlyticsCore"

    const-string/jumbo v2, "No open sessions to be closed."

    invoke-interface {v0, v1, v2}, Lc/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    :goto_2
    return-void

    .line 527
    :cond_2
    aget-object v4, v6, v0

    invoke-static {v4}, Lcom/b/a/c/h;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    .line 4046
    :try_start_0
    new-instance v4, Lcom/b/a/c/d;

    invoke-virtual {p0}, Lcom/b/a/c/h;->c()Ljava/io/File;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "SessionUser"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v7, v8}, Lcom/b/a/c/d;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4047
    :try_start_1
    invoke-static {v4}, Lcom/b/a/c/e;->a(Ljava/io/OutputStream;)Lcom/b/a/c/e;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 4297
    :try_start_2
    invoke-virtual {p0}, Lcom/b/a/c/h;->b()Z

    move-result v7

    if-eqz v7, :cond_3

    new-instance v5, Lcom/b/a/c/al;

    iget-object v7, p0, Lcom/b/a/c/h;->e:Lcom/b/a/c/i;

    invoke-virtual {v7}, Lcom/b/a/c/i;->g()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/b/a/c/h;->e:Lcom/b/a/c/i;

    invoke-virtual {v8}, Lcom/b/a/c/i;->i()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/b/a/c/h;->e:Lcom/b/a/c/i;

    invoke-virtual {v9}, Lcom/b/a/c/i;->h()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v7, v8, v9}, Lcom/b/a/c/al;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5038
    :goto_3
    iget-object v7, v5, Lcom/b/a/c/al;->b:Ljava/lang/String;

    if-nez v7, :cond_4

    iget-object v7, v5, Lcom/b/a/c/al;->c:Ljava/lang/String;

    if-nez v7, :cond_4

    iget-object v7, v5, Lcom/b/a/c/al;->d:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez v7, :cond_4

    .line 4052
    :goto_4
    if-eqz v1, :cond_5

    .line 4059
    const-string/jumbo v1, "Failed to flush session user file."

    invoke-static {v3, v1}, Lc/a/a/a/a/b/i;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 4060
    const-string/jumbo v1, "Failed to close session user file."

    invoke-static {v4, v1}, Lc/a/a/a/a/b/i;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 534
    :goto_5
    if-nez p1, :cond_6

    .line 535
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v0

    const-string/jumbo v1, "CrashlyticsCore"

    const-string/jumbo v2, "Unable to close session. Settings are not loaded."

    invoke-interface {v0, v1, v2}, Lc/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 4297
    :cond_3
    :try_start_3
    new-instance v7, Lcom/b/a/c/w;

    invoke-virtual {p0}, Lcom/b/a/c/h;->c()Ljava/io/File;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/b/a/c/w;-><init>(Ljava/io/File;)V

    invoke-virtual {v7, v5}, Lcom/b/a/c/w;->a(Ljava/lang/String;)Lcom/b/a/c/al;

    move-result-object v5

    goto :goto_3

    :cond_4
    move v1, v2

    .line 5038
    goto :goto_4

    .line 4056
    :cond_5
    iget-object v1, v5, Lcom/b/a/c/al;->b:Ljava/lang/String;

    iget-object v2, v5, Lcom/b/a/c/al;->c:Ljava/lang/String;

    iget-object v5, v5, Lcom/b/a/c/al;->d:Ljava/lang/String;

    invoke-static {v3, v1, v2, v5}, Lcom/b/a/c/ag;->a(Lcom/b/a/c/e;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 4059
    const-string/jumbo v1, "Failed to flush session user file."

    invoke-static {v3, v1}, Lc/a/a/a/a/b/i;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 4060
    const-string/jumbo v1, "Failed to close session user file."

    invoke-static {v4, v1}, Lc/a/a/a/a/b/i;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_5

    .line 4059
    :catchall_0
    move-exception v0

    move-object v1, v3

    :goto_6
    const-string/jumbo v2, "Failed to flush session user file."

    invoke-static {v1, v2}, Lc/a/a/a/a/b/i;->a(Ljava/io/Flushable;Ljava/lang/String;)V

    .line 4060
    const-string/jumbo v1, "Failed to close session user file."

    invoke-static {v3, v1}, Lc/a/a/a/a/b/i;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    .line 540
    :cond_6
    iget v1, p1, Lc/a/a/a/a/g/p;->c:I

    invoke-direct {p0, v6, v0, v1}, Lcom/b/a/c/h;->a([Ljava/io/File;II)V

    goto/16 :goto_2

    .line 4059
    :catchall_1
    move-exception v0

    move-object v1, v3

    move-object v3, v4

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v1, v3

    move-object v3, v4

    goto :goto_6
.end method

.method final declared-synchronized a(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 271
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lc/a/a/a/c;->a()Lc/a/a/a/l;

    move-result-object v0

    const-string/jumbo v1, "CrashlyticsCore"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Crashlytics is handling uncaught exception \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\" from thread "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lc/a/a/a/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/b/a/c/h;->r:Lcom/b/a/c/q;

    .line 3073
    iget-object v1, v0, Lcom/b/a/c/q;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3077
    iget-object v1, v0, Lcom/b/a/c/q;->b:Landroid/content/Context;

    iget-object v2, v0, Lcom/b/a/c/q;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3078
    iget-object v1, v0, Lcom/b/a/c/q;->b:Landroid/content/Context;

    iget-object v0, v0, Lcom/b/a/c/q;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 277
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 278
    iget-object v1, p0, Lcom/b/a/c/h;->f:Lcom/b/a/c/g;

    new-instance v2, Lcom/b/a/c/h$12;

    invoke-direct {v2, p0, v0, p1, p2}, Lcom/b/a/c/h$12;-><init>(Lcom/b/a/c/h;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/b/a/c/g;->a(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    monitor-exit p0

    return-void

    .line 271
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final a(Lc/a/a/a/a/g/t;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1318
    if-nez p1, :cond_1

    .line 1322
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p1, Lc/a/a/a/a/g/t;->d:Lc/a/a/a/a/g/m;

    iget-boolean v1, v1, Lc/a/a/a/a/g/m;->a:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/b/a/c/h;->g:Lcom/b/a/c/ab;

    .line 9050
    iget-object v1, v1, Lcom/b/a/c/ab;->a:Lc/a/a/a/a/f/c;

    invoke-interface {v1}, Lc/a/a/a/a/f/c;->a()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "always_send_reports_opt_in"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1322
    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method final a(Ljava/io/FilenameFilter;)[Ljava/io/File;
    .locals 1

    .prologue
    .line 624
    invoke-virtual {p0}, Lcom/b/a/c/h;->c()Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/b/a/c/h;->a(Ljava/io/File;Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method final b()Z
    .locals 1

    .prologue
    .line 1306
    iget-object v0, p0, Lcom/b/a/c/h;->i:Lcom/b/a/c/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/b/a/c/h;->i:Lcom/b/a/c/m;

    .line 9044
    iget-object v0, v0, Lcom/b/a/c/m;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 1306
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final c()Ljava/io/File;
    .locals 1

    .prologue
    .line 1310
    iget-object v0, p0, Lcom/b/a/c/h;->p:Lc/a/a/a/a/f/a;

    invoke-interface {v0}, Lc/a/a/a/a/f/a;->a()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method final d()Ljava/io/File;
    .locals 3

    .prologue
    .line 1314
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/b/a/c/h;->c()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "invalidClsFiles"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method
