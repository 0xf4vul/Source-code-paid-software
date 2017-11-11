.class public Lcom/google/android/gms/internal/zzbmx;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzbmx;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I
    .annotation runtime Lcom/google/android/gms/internal/gb;
    .end annotation
.end field

.field b:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/internal/ol;
        a = "requestUri"
    .end annotation
.end field

.field c:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/internal/ol;
        a = "idToken"
    .end annotation
.end field

.field d:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/internal/gb;
    .end annotation
.end field

.field e:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/internal/gb;
    .end annotation
.end field

.field f:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/internal/gb;
    .end annotation
.end field

.field g:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/internal/gb;
    .end annotation
.end field

.field h:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/internal/ol;
        a = "postBody"
    .end annotation
.end field

.field i:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/internal/ol;
        a = "oauthTokenSecret"
    .end annotation
.end field

.field j:Z
    .annotation runtime Lcom/google/android/gms/internal/ol;
        a = "returnSecureToken"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/gp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gp;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbmx;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/zzbmx;->a:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbmx;->j:Z

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzbmx;->a:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbmx;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbmx;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbmx;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzbmx;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzbmx;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzbmx;->g:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/internal/zzbmx;->h:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/internal/zzbmx;->i:Ljava/lang/String;

    iput-boolean p10, p0, Lcom/google/android/gms/internal/zzbmx;->j:Z

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/gp;->a(Lcom/google/android/gms/internal/zzbmx;Landroid/os/Parcel;)V

    return-void
.end method
