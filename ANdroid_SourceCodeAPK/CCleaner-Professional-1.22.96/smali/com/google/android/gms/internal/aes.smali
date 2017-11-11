.class public Lcom/google/android/gms/internal/aes;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation runtime Lcom/google/android/gms/internal/aag;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/aes$d;,
        Lcom/google/android/gms/internal/aes$e;,
        Lcom/google/android/gms/internal/aes$c;,
        Lcom/google/android/gms/internal/aes$b;,
        Lcom/google/android/gms/internal/aes$a;
    }
.end annotation


# static fields
.field private static final o:[Ljava/lang/String;

.field private static final p:[Ljava/lang/String;


# instance fields
.field private final A:Lcom/google/android/gms/internal/yv;

.field private B:Lcom/google/android/gms/internal/yx;

.field private C:Z

.field private D:Z

.field protected a:Lcom/google/android/gms/internal/aer;

.field final b:Ljava/lang/Object;

.field public c:Lcom/google/android/gms/internal/aes$a;

.field d:Lcom/google/android/gms/internal/aes$b;

.field public e:Lcom/google/android/gms/internal/aes$c;

.field f:Z

.field g:Z

.field h:Z

.field public i:Lcom/google/android/gms/ads/internal/f;

.field j:Lcom/google/android/gms/internal/yr;

.field public k:Lcom/google/android/gms/internal/aes$e;

.field protected l:Lcom/google/android/gms/internal/acn;

.field m:Z

.field n:I

.field private final q:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/wb;",
            ">;>;"
        }
    .end annotation
.end field

.field private r:Lcom/google/android/gms/internal/sb;

.field private s:Lcom/google/android/gms/ads/internal/overlay/i;

.field private t:Lcom/google/android/gms/internal/vw;

.field private u:Lcom/google/android/gms/internal/wd;

.field private v:Lcom/google/android/gms/internal/wf;

.field private w:Z

.field private x:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private y:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private z:Lcom/google/android/gms/ads/internal/overlay/r;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "UNKNOWN"

    aput-object v1, v0, v3

    const-string/jumbo v1, "HOST_LOOKUP"

    aput-object v1, v0, v4

    const-string/jumbo v1, "UNSUPPORTED_AUTH_SCHEME"

    aput-object v1, v0, v5

    const-string/jumbo v1, "AUTHENTICATION"

    aput-object v1, v0, v6

    const-string/jumbo v1, "PROXY_AUTHENTICATION"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "CONNECT"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "IO"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "TIMEOUT"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "REDIRECT_LOOP"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "UNSUPPORTED_SCHEME"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "FAILED_SSL_HANDSHAKE"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "BAD_URL"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "FILE"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "FILE_NOT_FOUND"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "TOO_MANY_REQUESTS"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/internal/aes;->o:[Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "NOT_YET_VALID"

    aput-object v1, v0, v3

    const-string/jumbo v1, "EXPIRED"

    aput-object v1, v0, v4

    const-string/jumbo v1, "ID_MISMATCH"

    aput-object v1, v0, v5

    const-string/jumbo v1, "UNTRUSTED"

    aput-object v1, v0, v6

    const-string/jumbo v1, "DATE_INVALID"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "INVALID"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/internal/aes;->p:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/aer;Z)V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/yv;

    invoke-interface {p1}, Lcom/google/android/gms/internal/aer;->g()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/tu;

    invoke-interface {p1}, Lcom/google/android/gms/internal/aer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/tu;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/gms/internal/yv;-><init>(Lcom/google/android/gms/internal/aer;Landroid/content/Context;Lcom/google/android/gms/internal/tu;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/aes;-><init>(Lcom/google/android/gms/internal/aer;ZLcom/google/android/gms/internal/yv;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/aer;ZLcom/google/android/gms/internal/yv;)V
    .locals 1

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/aes;->q:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/aes;->b:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/aes;->f:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/aes;->a:Lcom/google/android/gms/internal/aer;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/aes;->g:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/aes;->A:Lcom/google/android/gms/internal/yv;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/aes;->j:Lcom/google/android/gms/internal/yr;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/aes;)Lcom/google/android/gms/internal/aes$c;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/aes;->e:Lcom/google/android/gms/internal/aes$c;

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 0
    sget-object v0, Lcom/google/android/gms/internal/ud;->bs:Lcom/google/android/gms/internal/ty;

    .line 4000
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->q()Lcom/google/android/gms/internal/uc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/uc;->a(Lcom/google/android/gms/internal/ty;)Ljava/lang/Object;

    move-result-object v0

    .line 0
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "err"

    invoke-virtual {v1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "code"

    invoke-virtual {v1, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "host"

    .line 5000
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 0
    :goto_1
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->e()Lcom/google/android/gms/internal/adj;

    iget-object v0, p0, Lcom/google/android/gms/internal/aes;->a:Lcom/google/android/gms/internal/aer;

    invoke-interface {v0}, Lcom/google/android/gms/internal/aer;->o()Lcom/google/android/gms/internal/zzqh;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzqh;->a:Ljava/lang/String;

    const-string/jumbo v2, "gmob-apps"

    const/4 v3, 0x1

    invoke-static {p1, v0, v2, v1, v3}, Lcom/google/android/gms/internal/adj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    goto :goto_0

    .line 5000
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_1
.end method

.method private a(Landroid/net/Uri;)V
    .locals 7

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/aes;->q:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->e()Lcom/google/android/gms/internal/adj;

    invoke-static {p1}, Lcom/google/android/gms/internal/adj;->a(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object v3

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/google/android/gms/internal/adf;->a(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "Received GMSG: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/internal/adf;->a(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v5, "  "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, ": "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/adf;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/wb;

    iget-object v2, p0, Lcom/google/android/gms/internal/aes;->a:Lcom/google/android/gms/internal/aer;

    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/wb;->a(Lcom/google/android/gms/internal/aer;Ljava/util/Map;)V

    goto :goto_2

    :cond_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x20

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "No GMSG handler found for GMSG: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->a(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private a(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/aes;->j:Lcom/google/android/gms/internal/yr;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/aes;->j:Lcom/google/android/gms/internal/yr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/yr;->b()Z

    move-result v0

    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->c()Lcom/google/android/gms/ads/internal/overlay/g;

    iget-object v2, p0, Lcom/google/android/gms/internal/aes;->a:Lcom/google/android/gms/internal/aer;

    invoke-interface {v2}, Lcom/google/android/gms/internal/aer;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v2, p1, v1}, Lcom/google/android/gms/ads/internal/overlay/g;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/aes;->l:Lcom/google/android/gms/internal/acn;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->l:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->a:Lcom/google/android/gms/ads/internal/overlay/zzc;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->a:Lcom/google/android/gms/ads/internal/overlay/zzc;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/zzc;->b:Ljava/lang/String;

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/aes;)Lcom/google/android/gms/internal/aes$c;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/aes;->e:Lcom/google/android/gms/internal/aes$c;

    return-object v0
.end method


# virtual methods
.method public final a(IIZ)V
    .locals 8

    .prologue
    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/aes;->A:Lcom/google/android/gms/internal/yv;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/yv;->a(II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/aes;->j:Lcom/google/android/gms/internal/yr;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/aes;->j:Lcom/google/android/gms/internal/yr;

    .line 1000
    iget-object v1, v0, Lcom/google/android/gms/internal/yr;->j:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput p1, v0, Lcom/google/android/gms/internal/yr;->d:I

    iput p2, v0, Lcom/google/android/gms/internal/yr;->e:I

    iget-object v2, v0, Lcom/google/android/gms/internal/yr;->q:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/yr;->a()[I

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, v0, Lcom/google/android/gms/internal/yr;->q:Landroid/widget/PopupWindow;

    invoke-static {}, Lcom/google/android/gms/internal/so;->a()Lcom/google/android/gms/internal/aea;

    iget-object v4, v0, Lcom/google/android/gms/internal/yr;->l:Landroid/app/Activity;

    const/4 v5, 0x0

    aget v5, v2, v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/aea;->a(Landroid/content/Context;I)I

    move-result v4

    invoke-static {}, Lcom/google/android/gms/internal/so;->a()Lcom/google/android/gms/internal/aea;

    iget-object v5, v0, Lcom/google/android/gms/internal/yr;->l:Landroid/app/Activity;

    const/4 v6, 0x1

    aget v6, v2, v6

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/aea;->a(Landroid/content/Context;I)I

    move-result v5

    iget-object v6, v0, Lcom/google/android/gms/internal/yr;->q:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v6

    iget-object v7, v0, Lcom/google/android/gms/internal/yr;->q:Landroid/widget/PopupWindow;

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/PopupWindow;->update(IIII)V

    const/4 v3, 0x0

    aget v3, v2, v3

    const/4 v4, 0x1

    aget v2, v2, v4

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/yr;->a(II)V

    :cond_0
    :goto_0
    monitor-exit v1

    :cond_1
    return-void

    :cond_2
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/yr;->a(Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/aes;->b:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/aes;->w:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/aes;->a:Lcom/google/android/gms/internal/aer;

    invoke-interface {v0}, Lcom/google/android/gms/internal/aer;->B()V

    iput-object p1, p0, Lcom/google/android/gms/internal/aes;->x:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iput-object p2, p0, Lcom/google/android/gms/internal/aes;->y:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Lcom/google/android/gms/ads/internal/overlay/zzc;)V
    .locals 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/aes;->a:Lcom/google/android/gms/internal/aer;

    invoke-interface {v0}, Lcom/google/android/gms/internal/aer;->p()Z

    move-result v1

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/aes;->a:Lcom/google/android/gms/internal/aer;

    invoke-interface {v2}, Lcom/google/android/gms/internal/aer;->k()Lcom/google/android/gms/internal/zzeg;

    move-result-object v2

    iget-boolean v2, v2, Lcom/google/android/gms/internal/zzeg;->d:Z

    if-nez v2, :cond_0

    move-object v2, v3

    :goto_0
    if-eqz v1, :cond_1

    :goto_1
    iget-object v4, p0, Lcom/google/android/gms/internal/aes;->z:Lcom/google/android/gms/ads/internal/overlay/r;

    iget-object v1, p0, Lcom/google/android/gms/internal/aes;->a:Lcom/google/android/gms/internal/aer;

    invoke-interface {v1}, Lcom/google/android/gms/internal/aer;->o()Lcom/google/android/gms/internal/zzqh;

    move-result-object v5

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzc;Lcom/google/android/gms/internal/sb;Lcom/google/android/gms/ads/internal/overlay/i;Lcom/google/android/gms/ads/internal/overlay/r;Lcom/google/android/gms/internal/zzqh;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/aes;->a(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/aes;->r:Lcom/google/android/gms/internal/sb;

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/google/android/gms/internal/aes;->s:Lcom/google/android/gms/ads/internal/overlay/i;

    goto :goto_1
.end method

.method public final a(Lcom/google/android/gms/internal/aer;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/aes;->a:Lcom/google/android/gms/internal/aer;

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/sb;Lcom/google/android/gms/ads/internal/overlay/i;Lcom/google/android/gms/internal/vw;Lcom/google/android/gms/ads/internal/overlay/r;ZLcom/google/android/gms/internal/wd;Lcom/google/android/gms/internal/wf;Lcom/google/android/gms/ads/internal/f;Lcom/google/android/gms/internal/yx;Lcom/google/android/gms/internal/acn;)V
    .locals 3

    .prologue
    .line 0
    if-nez p8, :cond_0

    new-instance p8, Lcom/google/android/gms/ads/internal/f;

    iget-object v0, p0, Lcom/google/android/gms/internal/aes;->a:Lcom/google/android/gms/internal/aer;

    invoke-interface {v0}, Lcom/google/android/gms/internal/aer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p8, v0}, Lcom/google/android/gms/ads/internal/f;-><init>(Landroid/content/Context;)V

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/yr;

    iget-object v1, p0, Lcom/google/android/gms/internal/aes;->a:Lcom/google/android/gms/internal/aer;

    invoke-direct {v0, v1, p9}, Lcom/google/android/gms/internal/yr;-><init>(Lcom/google/android/gms/internal/aer;Lcom/google/android/gms/internal/yx;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/aes;->j:Lcom/google/android/gms/internal/yr;

    iput-object p10, p0, Lcom/google/android/gms/internal/aes;->l:Lcom/google/android/gms/internal/acn;

    const-string/jumbo v0, "/appEvent"

    new-instance v1, Lcom/google/android/gms/internal/vv;

    invoke-direct {v1, p3}, Lcom/google/android/gms/internal/vv;-><init>(Lcom/google/android/gms/internal/vw;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/aes;->a(Ljava/lang/String;Lcom/google/android/gms/internal/wb;)V

    const-string/jumbo v0, "/backButton"

    sget-object v1, Lcom/google/android/gms/internal/wa;->l:Lcom/google/android/gms/internal/wb;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/aes;->a(Ljava/lang/String;Lcom/google/android/gms/internal/wb;)V

    const-string/jumbo v0, "/refresh"

    sget-object v1, Lcom/google/android/gms/internal/wa;->m:Lcom/google/android/gms/internal/wb;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/aes;->a(Ljava/lang/String;Lcom/google/android/gms/internal/wb;)V

    const-string/jumbo v0, "/canOpenURLs"

    sget-object v1, Lcom/google/android/gms/internal/wa;->b:Lcom/google/android/gms/internal/wb;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/aes;->a(Ljava/lang/String;Lcom/google/android/gms/internal/wb;)V

    const-string/jumbo v0, "/canOpenIntents"

    sget-object v1, Lcom/google/android/gms/internal/wa;->c:Lcom/google/android/gms/internal/wb;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/aes;->a(Ljava/lang/String;Lcom/google/android/gms/internal/wb;)V

    const-string/jumbo v0, "/click"

    sget-object v1, Lcom/google/android/gms/internal/wa;->d:Lcom/google/android/gms/internal/wb;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/aes;->a(Ljava/lang/String;Lcom/google/android/gms/internal/wb;)V

    const-string/jumbo v0, "/close"

    sget-object v1, Lcom/google/android/gms/internal/wa;->e:Lcom/google/android/gms/internal/wb;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/aes;->a(Ljava/lang/String;Lcom/google/android/gms/internal/wb;)V

    const-string/jumbo v0, "/customClose"

    sget-object v1, Lcom/google/android/gms/internal/wa;->g:Lcom/google/android/gms/internal/wb;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/aes;->a(Ljava/lang/String;Lcom/google/android/gms/internal/wb;)V

    const-string/jumbo v0, "/instrument"

    sget-object v1, Lcom/google/android/gms/internal/wa;->r:Lcom/google/android/gms/internal/wb;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/aes;->a(Ljava/lang/String;Lcom/google/android/gms/internal/wb;)V

    const-string/jumbo v0, "/delayPageLoaded"

    sget-object v1, Lcom/google/android/gms/internal/wa;->t:Lcom/google/android/gms/internal/wb;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/aes;->a(Ljava/lang/String;Lcom/google/android/gms/internal/wb;)V

    const-string/jumbo v0, "/delayPageClosed"

    sget-object v1, Lcom/google/android/gms/internal/wa;->u:Lcom/google/android/gms/internal/wb;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/aes;->a(Ljava/lang/String;Lcom/google/android/gms/internal/wb;)V

    const-string/jumbo v0, "/getLocationInfo"

    sget-object v1, Lcom/google/android/gms/internal/wa;->v:Lcom/google/android/gms/internal/wb;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/aes;->a(Ljava/lang/String;Lcom/google/android/gms/internal/wb;)V

    const-string/jumbo v0, "/httpTrack"

    sget-object v1, Lcom/google/android/gms/internal/wa;->h:Lcom/google/android/gms/internal/wb;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/aes;->a(Ljava/lang/String;Lcom/google/android/gms/internal/wb;)V

    const-string/jumbo v0, "/log"

    sget-object v1, Lcom/google/android/gms/internal/wa;->i:Lcom/google/android/gms/internal/wb;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/aes;->a(Ljava/lang/String;Lcom/google/android/gms/internal/wb;)V

    const-string/jumbo v0, "/mraid"

    new-instance v1, Lcom/google/android/gms/internal/wi;

    iget-object v2, p0, Lcom/google/android/gms/internal/aes;->j:Lcom/google/android/gms/internal/yr;

    invoke-direct {v1, p8, v2}, Lcom/google/android/gms/internal/wi;-><init>(Lcom/google/android/gms/ads/internal/f;Lcom/google/android/gms/internal/yr;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/aes;->a(Ljava/lang/String;Lcom/google/android/gms/internal/wb;)V

    const-string/jumbo v0, "/mraidLoaded"

    iget-object v1, p0, Lcom/google/android/gms/internal/aes;->A:Lcom/google/android/gms/internal/yv;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/aes;->a(Ljava/lang/String;Lcom/google/android/gms/internal/wb;)V

    const-string/jumbo v0, "/open"

    new-instance v1, Lcom/google/android/gms/internal/wj;

    iget-object v2, p0, Lcom/google/android/gms/internal/aes;->j:Lcom/google/android/gms/internal/yr;

    invoke-direct {v1, p6, p8, v2}, Lcom/google/android/gms/internal/wj;-><init>(Lcom/google/android/gms/internal/wd;Lcom/google/android/gms/ads/internal/f;Lcom/google/android/gms/internal/yr;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/aes;->a(Ljava/lang/String;Lcom/google/android/gms/internal/wb;)V

    const-string/jumbo v0, "/precache"

    sget-object v1, Lcom/google/android/gms/internal/wa;->q:Lcom/google/android/gms/internal/wb;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/aes;->a(Ljava/lang/String;Lcom/google/android/gms/internal/wb;)V

    const-string/jumbo v0, "/touch"

    sget-object v1, Lcom/google/android/gms/internal/wa;->k:Lcom/google/android/gms/internal/wb;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/aes;->a(Ljava/lang/String;Lcom/google/android/gms/internal/wb;)V

    const-string/jumbo v0, "/video"

    sget-object v1, Lcom/google/android/gms/internal/wa;->n:Lcom/google/android/gms/internal/wb;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/aes;->a(Ljava/lang/String;Lcom/google/android/gms/internal/wb;)V

    const-string/jumbo v0, "/videoMeta"

    sget-object v1, Lcom/google/android/gms/internal/wa;->o:Lcom/google/android/gms/internal/wb;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/aes;->a(Ljava/lang/String;Lcom/google/android/gms/internal/wb;)V

    const-string/jumbo v0, "/appStreaming"

    sget-object v1, Lcom/google/android/gms/internal/wa;->f:Lcom/google/android/gms/internal/wb;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/aes;->a(Ljava/lang/String;Lcom/google/android/gms/internal/wb;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->D()Lcom/google/android/gms/internal/acq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/acq;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "/logScionEvent"

    sget-object v1, Lcom/google/android/gms/internal/wa;->p:Lcom/google/android/gms/internal/wb;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/aes;->a(Ljava/lang/String;Lcom/google/android/gms/internal/wb;)V

    :cond_1
    if-eqz p7, :cond_2

    const-string/jumbo v0, "/setInterstitialProperties"

    new-instance v1, Lcom/google/android/gms/internal/we;

    invoke-direct {v1, p7}, Lcom/google/android/gms/internal/we;-><init>(Lcom/google/android/gms/internal/wf;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/aes;->a(Ljava/lang/String;Lcom/google/android/gms/internal/wb;)V

    :cond_2
    iput-object p1, p0, Lcom/google/android/gms/internal/aes;->r:Lcom/google/android/gms/internal/sb;

    iput-object p2, p0, Lcom/google/android/gms/internal/aes;->s:Lcom/google/android/gms/ads/internal/overlay/i;

    iput-object p3, p0, Lcom/google/android/gms/internal/aes;->t:Lcom/google/android/gms/internal/vw;

    iput-object p6, p0, Lcom/google/android/gms/internal/aes;->u:Lcom/google/android/gms/internal/wd;

    iput-object p4, p0, Lcom/google/android/gms/internal/aes;->z:Lcom/google/android/gms/ads/internal/overlay/r;

    iput-object p8, p0, Lcom/google/android/gms/internal/aes;->i:Lcom/google/android/gms/ads/internal/f;

    iput-object p9, p0, Lcom/google/android/gms/internal/aes;->B:Lcom/google/android/gms/internal/yx;

    iput-object p7, p0, Lcom/google/android/gms/internal/aes;->v:Lcom/google/android/gms/internal/wf;

    .line 2000
    iput-boolean p5, p0, Lcom/google/android/gms/internal/aes;->f:Z

    .line 0
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gms/internal/wb;)V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/aes;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/aes;->q:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/aes;->q:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(ZI)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/aes;->a:Lcom/google/android/gms/internal/aer;

    invoke-interface {v0}, Lcom/google/android/gms/internal/aer;->p()Z

    move-result v1

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/aes;->a:Lcom/google/android/gms/internal/aer;

    invoke-interface {v1}, Lcom/google/android/gms/internal/aer;->k()Lcom/google/android/gms/internal/zzeg;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/gms/internal/zzeg;->d:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/aes;->s:Lcom/google/android/gms/ads/internal/overlay/i;

    iget-object v3, p0, Lcom/google/android/gms/internal/aes;->z:Lcom/google/android/gms/ads/internal/overlay/r;

    iget-object v4, p0, Lcom/google/android/gms/internal/aes;->a:Lcom/google/android/gms/internal/aer;

    iget-object v5, p0, Lcom/google/android/gms/internal/aes;->a:Lcom/google/android/gms/internal/aer;

    invoke-interface {v5}, Lcom/google/android/gms/internal/aer;->o()Lcom/google/android/gms/internal/zzqh;

    move-result-object v7

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/sb;Lcom/google/android/gms/ads/internal/overlay/i;Lcom/google/android/gms/ads/internal/overlay/r;Lcom/google/android/gms/internal/aer;ZILcom/google/android/gms/internal/zzqh;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/aes;->a(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/aes;->r:Lcom/google/android/gms/internal/sb;

    goto :goto_0
.end method

.method public final a(ZILjava/lang/String;)V
    .locals 11

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/aes;->a:Lcom/google/android/gms/internal/aer;

    invoke-interface {v0}, Lcom/google/android/gms/internal/aer;->p()Z

    move-result v3

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/aes;->a:Lcom/google/android/gms/internal/aer;

    invoke-interface {v1}, Lcom/google/android/gms/internal/aer;->k()Lcom/google/android/gms/internal/zzeg;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/gms/internal/zzeg;->d:Z

    if-nez v1, :cond_0

    move-object v1, v2

    :goto_0
    if-eqz v3, :cond_1

    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/internal/aes;->t:Lcom/google/android/gms/internal/vw;

    iget-object v4, p0, Lcom/google/android/gms/internal/aes;->z:Lcom/google/android/gms/ads/internal/overlay/r;

    iget-object v5, p0, Lcom/google/android/gms/internal/aes;->a:Lcom/google/android/gms/internal/aer;

    iget-object v6, p0, Lcom/google/android/gms/internal/aes;->a:Lcom/google/android/gms/internal/aer;

    invoke-interface {v6}, Lcom/google/android/gms/internal/aer;->o()Lcom/google/android/gms/internal/zzqh;

    move-result-object v9

    iget-object v10, p0, Lcom/google/android/gms/internal/aes;->u:Lcom/google/android/gms/internal/wd;

    move v6, p1

    move v7, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/sb;Lcom/google/android/gms/ads/internal/overlay/i;Lcom/google/android/gms/internal/vw;Lcom/google/android/gms/ads/internal/overlay/r;Lcom/google/android/gms/internal/aer;ZILjava/lang/String;Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/internal/wd;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/aes;->a(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/aes;->r:Lcom/google/android/gms/internal/sb;

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/google/android/gms/internal/aes$d;

    iget-object v3, p0, Lcom/google/android/gms/internal/aes;->a:Lcom/google/android/gms/internal/aer;

    iget-object v4, p0, Lcom/google/android/gms/internal/aes;->s:Lcom/google/android/gms/ads/internal/overlay/i;

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/aes$d;-><init>(Lcom/google/android/gms/internal/aer;Lcom/google/android/gms/ads/internal/overlay/i;)V

    goto :goto_1
.end method

.method public final a(ZILjava/lang/String;Ljava/lang/String;)V
    .locals 12

    iget-object v0, p0, Lcom/google/android/gms/internal/aes;->a:Lcom/google/android/gms/internal/aer;

    invoke-interface {v0}, Lcom/google/android/gms/internal/aer;->p()Z

    move-result v2

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/aes;->a:Lcom/google/android/gms/internal/aer;

    invoke-interface {v1}, Lcom/google/android/gms/internal/aer;->k()Lcom/google/android/gms/internal/zzeg;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/gms/internal/zzeg;->d:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    if-eqz v2, :cond_1

    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/internal/aes;->t:Lcom/google/android/gms/internal/vw;

    iget-object v4, p0, Lcom/google/android/gms/internal/aes;->z:Lcom/google/android/gms/ads/internal/overlay/r;

    iget-object v5, p0, Lcom/google/android/gms/internal/aes;->a:Lcom/google/android/gms/internal/aer;

    iget-object v6, p0, Lcom/google/android/gms/internal/aes;->a:Lcom/google/android/gms/internal/aer;

    invoke-interface {v6}, Lcom/google/android/gms/internal/aer;->o()Lcom/google/android/gms/internal/zzqh;

    move-result-object v10

    iget-object v11, p0, Lcom/google/android/gms/internal/aes;->u:Lcom/google/android/gms/internal/wd;

    move v6, p1

    move v7, p2

    move-object v8, p3

    move-object/from16 v9, p4

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/sb;Lcom/google/android/gms/ads/internal/overlay/i;Lcom/google/android/gms/internal/vw;Lcom/google/android/gms/ads/internal/overlay/r;Lcom/google/android/gms/internal/aer;ZILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/internal/wd;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/aes;->a(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/aes;->r:Lcom/google/android/gms/internal/sb;

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/google/android/gms/internal/aes$d;

    iget-object v3, p0, Lcom/google/android/gms/internal/aes;->a:Lcom/google/android/gms/internal/aer;

    iget-object v4, p0, Lcom/google/android/gms/internal/aes;->s:Lcom/google/android/gms/ads/internal/overlay/i;

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/aes$d;-><init>(Lcom/google/android/gms/internal/aer;Lcom/google/android/gms/ads/internal/overlay/i;)V

    goto :goto_1
.end method

.method public final a()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/aes;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/aes;->g:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b(Ljava/lang/String;Lcom/google/android/gms/internal/wb;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/aes;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/aes;->q:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/aes;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/aes;->w:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final c()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/aes;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/aes;->x:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final d()Landroid/view/ViewTreeObserver$OnScrollChangedListener;
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/aes;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/aes;->y:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final e()Z
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/aes;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/aes;->h:Z

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final f()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/aes;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "Loading blank page in WebView, 2..."

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/aes;->C:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/aes;->a:Lcom/google/android/gms/internal/aer;

    const-string/jumbo v2, "about:blank"

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/aer;->a(Ljava/lang/String;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/aes;->l:Lcom/google/android/gms/internal/acn;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/adj;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/aes$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/aes$1;-><init>(Lcom/google/android/gms/internal/aes;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final h()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/aes;->c:Lcom/google/android/gms/internal/aes$a;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/aes;->D:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/aes;->n:I

    if-lez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/aes;->m:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/aes;->c:Lcom/google/android/gms/internal/aes$a;

    iget-object v2, p0, Lcom/google/android/gms/internal/aes;->a:Lcom/google/android/gms/internal/aer;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/aes;->m:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/aes$a;->a(Lcom/google/android/gms/internal/aer;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/aes;->c:Lcom/google/android/gms/internal/aes$a;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/aes;->a:Lcom/google/android/gms/internal/aer;

    invoke-interface {v0}, Lcom/google/android/gms/internal/aer;->C()V

    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i()V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/aes;->l:Lcom/google/android/gms/internal/acn;

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/google/android/gms/internal/aes;->l:Lcom/google/android/gms/internal/acn;

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/aes;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/aes;->q:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/aes;->r:Lcom/google/android/gms/internal/sb;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/aes;->s:Lcom/google/android/gms/ads/internal/overlay/i;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/aes;->c:Lcom/google/android/gms/internal/aes$a;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/aes;->d:Lcom/google/android/gms/internal/aes$b;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/aes;->t:Lcom/google/android/gms/internal/vw;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/aes;->f:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/aes;->g:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/aes;->w:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/aes;->h:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/aes;->u:Lcom/google/android/gms/internal/wd;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/aes;->z:Lcom/google/android/gms/ads/internal/overlay/r;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/aes;->e:Lcom/google/android/gms/internal/aes$c;

    iget-object v0, p0, Lcom/google/android/gms/internal/aes;->j:Lcom/google/android/gms/internal/yr;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/aes;->j:Lcom/google/android/gms/internal/yr;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/yr;->a(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/aes;->j:Lcom/google/android/gms/internal/yr;

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v1, "Loading resource: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->a(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string/jumbo v1, "gmsg"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "mobileads.google.com"

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/aes;->a(Landroid/net/Uri;)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 0
    iget-object v1, p0, Lcom/google/android/gms/internal/aes;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/aes;->C:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Blank page loaded, 1..."

    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/aes;->a:Lcom/google/android/gms/internal/aer;

    invoke-interface {v0}, Lcom/google/android/gms/internal/aer;->s()V

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/aes;->D:Z

    .line 3000
    iget-object v0, p0, Lcom/google/android/gms/internal/aes;->d:Lcom/google/android/gms/internal/aes$b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/aes;->d:Lcom/google/android/gms/internal/aes$b;

    invoke-interface {v0}, Lcom/google/android/gms/internal/aes$b;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/aes;->d:Lcom/google/android/gms/internal/aes$b;

    .line 0
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/aes;->h()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-gez p2, :cond_0

    neg-int v0, p2

    add-int/lit8 v0, v0, -0x1

    sget-object v1, Lcom/google/android/gms/internal/aes;->o:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/aes;->o:[Ljava/lang/String;

    neg-int v1, p2

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/aes;->a:Lcom/google/android/gms/internal/aer;

    invoke-interface {v1}, Lcom/google/android/gms/internal/aer;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "http_err"

    invoke-direct {p0, v1, v2, v0, p4}, Lcom/google/android/gms/internal/aes;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 4

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result v0

    if-ltz v0, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/aes;->p:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/aes;->p:[Ljava/lang/String;

    aget-object v0, v1, v0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/aes;->a:Lcom/google/android/gms/internal/aer;

    invoke-interface {v1}, Lcom/google/android/gms/internal/aer;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "ssl_err"

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->g()Lcom/google/android/gms/internal/adk;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/google/android/gms/internal/adk;->a(Landroid/net/http/SslError;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/google/android/gms/internal/aes;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    return-void

    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p2}, Lcom/google/android/gms/internal/zzds;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/zzds;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->j()Lcom/google/android/gms/internal/ru;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ru;->a(Lcom/google/android/gms/internal/zzds;)Lcom/google/android/gms/internal/zzdp;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzdp;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/webkit/WebResourceResponse;

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzdp;->b()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v3, v4, v2}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->i()Lcom/google/android/gms/internal/acz;

    move-result-object v2

    const-string/jumbo v3, "AdWebViewClient.shouldInterceptRequest"

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/acz;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_0
        0x55 -> :sswitch_0
        0x56 -> :sswitch_0
        0x57 -> :sswitch_0
        0x58 -> :sswitch_0
        0x59 -> :sswitch_0
        0x5a -> :sswitch_0
        0x5b -> :sswitch_0
        0x7e -> :sswitch_0
        0x7f -> :sswitch_0
        0x80 -> :sswitch_0
        0x81 -> :sswitch_0
        0x82 -> :sswitch_0
        0xde -> :sswitch_0
    .end sparse-switch
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 0
    const-string/jumbo v1, "AdWebView shouldOverrideUrlLoading: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->a(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string/jumbo v1, "gmsg"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "mobileads.google.com"

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/aes;->a(Landroid/net/Uri;)V

    :goto_1
    move v0, v8

    :goto_2
    return v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/aes;->f:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/aes;->a:Lcom/google/android/gms/internal/aer;

    invoke-interface {v1}, Lcom/google/android/gms/internal/aer;->a()Landroid/webkit/WebView;

    move-result-object v1

    if-ne p1, v1, :cond_5

    .line 6000
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "http"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "https"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    move v1, v8

    .line 0
    :goto_3
    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/aes;->r:Lcom/google/android/gms/internal/sb;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/google/android/gms/internal/ud;->aq:Lcom/google/android/gms/internal/ty;

    .line 7000
    invoke-static {}, Lcom/google/android/gms/ads/internal/v;->q()Lcom/google/android/gms/internal/uc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/uc;->a(Lcom/google/android/gms/internal/ty;)Ljava/lang/Object;

    move-result-object v0

    .line 0
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/aes;->r:Lcom/google/android/gms/internal/sb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/sb;->e()V

    iput-object v3, p0, Lcom/google/android/gms/internal/aes;->r:Lcom/google/android/gms/internal/sb;

    :cond_3
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_2

    .line 6000
    :cond_4
    const/4 v1, 0x0

    goto :goto_3

    .line 0
    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/aes;->a:Lcom/google/android/gms/internal/aer;

    invoke-interface {v1}, Lcom/google/android/gms/internal/aer;->a()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->willNotDraw()Z

    move-result v1

    if-nez v1, :cond_a

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/aes;->a:Lcom/google/android/gms/internal/aer;

    invoke-interface {v1}, Lcom/google/android/gms/internal/aer;->n()Lcom/google/android/gms/internal/ej;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ej;->b(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/android/gms/internal/aes;->a:Lcom/google/android/gms/internal/aer;

    invoke-interface {v2}, Lcom/google/android/gms/internal/aer;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/gms/internal/aes;->a:Lcom/google/android/gms/internal/aer;

    invoke-interface {v4}, Lcom/google/android/gms/internal/aer;->b()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v1, v0, v2, v4}, Lcom/google/android/gms/internal/ej;->a(Landroid/net/Uri;Landroid/content/Context;Landroid/view/View;)Landroid/net/Uri;
    :try_end_0
    .catch Lcom/google/android/gms/internal/ek; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_6
    move-object v2, v0

    :goto_4
    iget-object v0, p0, Lcom/google/android/gms/internal/aes;->i:Lcom/google/android/gms/ads/internal/f;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/aes;->i:Lcom/google/android/gms/ads/internal/f;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/f;->a()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_7
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzc;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/ads/internal/overlay/zzc;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/aes;->a(Lcom/google/android/gms/ads/internal/overlay/zzc;)V

    goto/16 :goto_1

    :catch_0
    move-exception v1

    const-string/jumbo v2, "Unable to append parameter to URL: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_5
    invoke-static {v1}, Lcom/google/android/gms/internal/adf;->e(Ljava/lang/String;)V

    move-object v2, v0

    goto :goto_4

    :cond_8
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/aes;->i:Lcom/google/android/gms/ads/internal/f;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/ads/internal/f;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_a
    const-string/jumbo v1, "AdWebView unable to handle URL: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_6
    invoke-static {v0}, Lcom/google/android/gms/internal/adf;->e(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_b
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_6
.end method
