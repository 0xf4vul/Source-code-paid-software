.class public Lcom/google/android/gms/internal/zzbmj;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzbmj;",
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
        a = "localId"
    .end annotation
.end field

.field c:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/internal/ol;
        a = "email"
    .end annotation
.end field

.field d:Z
    .annotation runtime Lcom/google/android/gms/internal/ol;
        a = "emailVerified"
    .end annotation
.end field

.field e:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/internal/ol;
        a = "displayName"
    .end annotation
.end field

.field f:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/internal/ol;
        a = "photoUrl"
    .end annotation
.end field

.field g:Lcom/google/android/gms/internal/zzbmr;
    .annotation runtime Lcom/google/android/gms/internal/ol;
        a = "providerUserInfo"
    .end annotation
.end field

.field h:Ljava/lang/String;
    .annotation runtime Lcom/google/android/gms/internal/ol;
        a = "passwordHash"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/gi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gi;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbmj;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzbmj;->a:I

    new-instance v0, Lcom/google/android/gms/internal/zzbmr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbmr;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbmj;->g:Lcom/google/android/gms/internal/zzbmr;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzbmr;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzbmj;->a:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbmj;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbmj;->c:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzbmj;->d:Z

    iput-object p5, p0, Lcom/google/android/gms/internal/zzbmj;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzbmj;->f:Ljava/lang/String;

    if-nez p7, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/zzbmr;->a()Lcom/google/android/gms/internal/zzbmr;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/zzbmj;->g:Lcom/google/android/gms/internal/zzbmr;

    iput-object p8, p0, Lcom/google/android/gms/internal/zzbmj;->h:Ljava/lang/String;

    return-void

    :cond_0
    invoke-static {p7}, Lcom/google/android/gms/internal/zzbmr;->a(Lcom/google/android/gms/internal/zzbmr;)Lcom/google/android/gms/internal/zzbmr;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/gi;->a(Lcom/google/android/gms/internal/zzbmj;Landroid/os/Parcel;I)V

    return-void
.end method
