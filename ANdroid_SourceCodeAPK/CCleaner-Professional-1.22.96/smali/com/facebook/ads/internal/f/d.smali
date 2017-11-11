.class public final Lcom/facebook/ads/internal/f/d;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field public final b:Lcom/facebook/ads/internal/f/h;

.field public final c:Lcom/facebook/ads/internal/f/c;

.field public d:Landroid/database/sqlite/SQLiteOpenHelper;

.field private final e:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "SELECT tokens."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/facebook/ads/internal/f/h;->a:Lcom/facebook/ads/internal/f/b;

    iget-object v1, v1, Lcom/facebook/ads/internal/f/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", tokens."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/internal/f/h;->b:Lcom/facebook/ads/internal/f/b;

    iget-object v1, v1, Lcom/facebook/ads/internal/f/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", events."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/internal/f/c;->a:Lcom/facebook/ads/internal/f/b;

    iget-object v1, v1, Lcom/facebook/ads/internal/f/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", events."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/internal/f/c;->c:Lcom/facebook/ads/internal/f/b;

    iget-object v1, v1, Lcom/facebook/ads/internal/f/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", events."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/internal/f/c;->d:Lcom/facebook/ads/internal/f/b;

    iget-object v1, v1, Lcom/facebook/ads/internal/f/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", events."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/internal/f/c;->e:Lcom/facebook/ads/internal/f/b;

    iget-object v1, v1, Lcom/facebook/ads/internal/f/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", events."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/internal/f/c;->f:Lcom/facebook/ads/internal/f/b;

    iget-object v1, v1, Lcom/facebook/ads/internal/f/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", events."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/internal/f/c;->g:Lcom/facebook/ads/internal/f/b;

    iget-object v1, v1, Lcom/facebook/ads/internal/f/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", events."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/internal/f/c;->h:Lcom/facebook/ads/internal/f/b;

    iget-object v1, v1, Lcom/facebook/ads/internal/f/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " FROM events JOIN tokens ON events."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/internal/f/c;->b:Lcom/facebook/ads/internal/f/b;

    iget-object v1, v1, Lcom/facebook/ads/internal/f/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " = tokens."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/internal/f/h;->a:Lcom/facebook/ads/internal/f/b;

    iget-object v1, v1, Lcom/facebook/ads/internal/f/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ORDER BY events."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/internal/f/c;->e:Lcom/facebook/ads/internal/f/b;

    iget-object v1, v1, Lcom/facebook/ads/internal/f/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ASC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/f/d;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/internal/f/d;->e:Landroid/content/Context;

    new-instance v0, Lcom/facebook/ads/internal/f/h;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/f/h;-><init>(Lcom/facebook/ads/internal/f/d;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/f/d;->b:Lcom/facebook/ads/internal/f/h;

    new-instance v0, Lcom/facebook/ads/internal/f/c;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/f/c;-><init>(Lcom/facebook/ads/internal/f/d;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/f/d;->c:Lcom/facebook/ads/internal/f/c;

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/f/d;)Lcom/facebook/ads/internal/f/h;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/f/d;->b:Lcom/facebook/ads/internal/f/h;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/ads/internal/f/d;)Lcom/facebook/ads/internal/f/c;
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/f/d;->c:Lcom/facebook/ads/internal/f/c;

    return-object v0
.end method

.method private declared-synchronized c()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/internal/f/d;->d:Landroid/database/sqlite/SQLiteOpenHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/facebook/ads/internal/f/e;

    iget-object v1, p0, Lcom/facebook/ads/internal/f/d;->e:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/facebook/ads/internal/f/e;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/f/d;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/f/d;->d:Landroid/database/sqlite/SQLiteOpenHelper;

    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/internal/f/d;->d:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot call getDatabase from the UI thread!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/internal/f/d;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/facebook/ads/internal/f/d;->c:Lcom/facebook/ads/internal/f/c;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/f/c;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final b()[Lcom/facebook/ads/internal/f/g;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/facebook/ads/internal/f/g;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/facebook/ads/internal/f/d;->b:Lcom/facebook/ads/internal/f/h;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/facebook/ads/internal/f/d;->c:Lcom/facebook/ads/internal/f/c;

    aput-object v2, v0, v1

    return-object v0
.end method
